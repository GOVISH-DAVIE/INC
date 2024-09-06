import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/app_common_extentions.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/features/officer/admin/applications/state/relief_notifier.dart';
import 'package:cais/features/officer/admin/relief/state/relief_notifier.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/disaster/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Relief extends StatefulWidget {
  const Relief({super.key});

  @override
  State<Relief> createState() => _ReliefState();
}

class _ReliefState extends State<Relief> {
  List<String> choices = [
    "Maize",
    "Beans",
    "Rice",
    "Cooking_oil",
    "Blankets",
    "Mattresses",
    "Building_materials"
  ];

  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // foregroundColor: white,
          title: Text(
            "Relief Distribution ",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        body: FutureBuilder(
            future: getData("auth"),
            builder: (context, snap) {
              if (snap.hasError) {
                return Text("${snap.error}");
              }
              AuthUserOfficerModel user =
                  AuthUserOfficerModel.fromJson(jsonDecode(snap.data!));

              return Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
                child: FormBuilder(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Type of Relief",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderDropdown<String>(
                              name: "type_of_relief",
                              decoration: InputDecoration(
                                hintText: 'Choose an Option',
                              ),
                              items: choices
                                  .map((gender) => DropdownMenuItem(
                                        alignment: AlignmentDirectional.center,
                                        value: gender,
                                        child: Text(gender),
                                      ))
                                  .toList(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "number of people given".capitalizeFirstofEach,
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: "number_of_people_given",
                              onChanged: (val) {
                                print(
                                    val); // Print the text value write into TextField
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Quantity Distributed",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: "quantity_distributed",
                              onChanged: (val) {
                                print(
                                    val); // Print the text value write into TextField
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        FormBuilderDateTimePicker(
                          name: "end_date",
                          format: dateFormat,
                          lastDate: DateTime.now(),

                          // controller: dateFormat,

                          valueTransformer: (value) {
                            if (value == null) {
                              return null;
                            } else {
                              return DateFormat('yyyy-MM-dd').format(value);
                            }
                          },
                          initialEntryMode: DatePickerEntryMode.calendar,
                          // initialValue: DateTime.now(),
                          inputType: InputType.date,

                          onChanged: (value) {
                            if (value == null) {
                              return;
                            }
                            // value?.toIso8601String();
                            String string = dateFormat.format(value);
                          },
                          // controller: string,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                // print(_formKey
                                //     .currentState!.value);
                                // return DateTimeField.convert(await _showTimePicker(context, currentValue) ?? TimeOfDay.fromDateTime(currentValue));
                                _formKey.currentState!.fields["start_date"]
                                    ?.didChange(null);
                              },
                            ),
                          ),
                          // initialTime: const TimeOfDay(hour: 8, minute: 0),
                          // locale: const Locale.fromSubtags(languageCode: 'fr'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate and save the form values
                              _formKey.currentState?.saveAndValidate();
                              debugPrint(
                                  _formKey.currentState?.value.toString());

                              // On another side, can access all field values without saving form with instantValues
                              _formKey.currentState?.validate();
                              var payload =
                                  Map.from(_formKey.currentState!.value);
                              payload["area"] = (user.villageId);
                              context
                                  .read<ReliefNotifier>()
                                  .createRelief(payload: payload,  )
                                  .then((value) {
                                _formKey.currentState?.reset();
                                Navigator.of(context).pop();
                                context.showCustomSnackBar(
                                    "Disaster Reported successfully");

                                // Navigator.of(widget.cxn).pop();
                              }).catchError((onError) {
                                logger.wtf(onError);
                                context.showCustomSnackBar(
                                    "[Relief Distribution] An Error Occured",
                                    isError: true);
                              });
                            },
                            child: context.watch<ReliefNotifier>().isBusy
                                ? const CircularProgressIndicator(
                                    color: white,
                                  )
                                : const Text(
                                    'Submit',
                                    style:
                                        TextStyle(color: white, fontSize: 30),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
