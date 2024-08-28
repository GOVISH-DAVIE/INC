import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/features/officer/reports/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MakeReportForm extends StatefulWidget {
  final BuildContext cxn;
  final ReportsCategoryModel report;
  const MakeReportForm({super.key, required this.cxn, required this.report});

  @override
  State<MakeReportForm> createState() => _CreateCountiesState();
}

class _CreateCountiesState extends State<MakeReportForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  List<String> genderOptions = ['Adult', 'Minor'];

  DateFormat dateFormat = DateFormat('yyyy-MM-dd HH:mm');
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData("auth"),
        builder: (context, snap) {
          if (snap.hasError) {
            return Text("${snap.error}");
          }
          AuthUserOfficerModel user =
              AuthUserOfficerModel.fromJson(jsonDecode(snap.data!));

          return
           Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
            child: FormBuilder(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Report an Incident ",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 30,
                    ),
                    ...widget.report.fields!.map((e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.name!
                                  .replaceAll("_", " ")
                                  .capitalizeFirstofEach,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: mainColor, fontSize: 17),
                            ),
                            e.type == "select"
                                ? FormBuilderDropdown<String>(
                                    name: e.name!,
                                    decoration: InputDecoration(
                                      suffix: IconButton(
                                        icon: const Icon(Icons.close),
                                        onPressed: () {
                                          _formKey.currentState!.fields[e.name]
                                              ?.reset();
                                        },
                                      ),
                                      hintText:
                                          'Select ${e.name!.replaceAll("_", " ").capitalizeFirstofEach}',
                                    ),
                                    items: e.options!
                                        .map((gender) => DropdownMenuItem(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              value: gender,
                                              child: Text(gender),
                                            ))
                                        .toList(),
                                  )
                                : e.type == 'date'
                                    ? FormBuilderDateTimePicker(
                                        name: e.name!,
                                        format: dateFormat,
                                        lastDate: DateTime.now(),

                                        // controller: dateFormat,

                                        valueTransformer: (value) {
                                          if (value == null) {
                                            return null;
                                          } else {
                                            return DateFormat(
                                                    'yyyy-MM-dd HH:mm')
                                                .format(value);
                                          }
                                        },
                                        initialEntryMode:
                                            DatePickerEntryMode.calendar,
                                        // initialValue: DateTime.now(),
                                        inputType: InputType.both,

                                        onChanged: (value) {
                                          if (value == null) {
                                            return;
                                          }
                                          // value?.toIso8601String();
                                          String string =
                                              dateFormat.format(value);

                                          print(string);
                                          // return string;

                                          // value = string; // print(string);
                                          // print(
                                          //     _formKey.currentState!.value);
                                          // _formKey.currentState!
                                          //     .fields['date']?.value
                                          //     .toString();
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
                                              _formKey
                                                  .currentState!.fields[e.name]
                                                  ?.didChange(null);
                                            },
                                          ),
                                        ),
                                        // initialTime: const TimeOfDay(hour: 8, minute: 0),
                                        // locale: const Locale.fromSubtags(languageCode: 'fr'),
                                      )
                                    : FormBuilderTextField(
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                        ),
                                        name: e.name!,
                                        onChanged: (val) {
                                          print(
                                              val); // Print the text value write into TextField
                                        },
                                      ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Validate and save the form values
                        _formKey.currentState?.saveAndValidate();
                        debugPrint(_formKey.currentState?.value.toString());

                        // On another side, can access all field values without saving form with instantValues
                        _formKey.currentState?.validate();
                        var payload = Map.from(_formKey.currentState!.value);
                        payload["villageId"] = (user.villageId);
                        payload["reportsId"] = (widget.report.id);
                        print(payload);
                        context
                            .read<ReportsNotifier>()
                            .createReport(payload: payload)
                            .then((value) {
                          context
                              .showCustomSnackBar("Report Created successfully");

                          Navigator.of(widget.cxn).pop();
                        });
                      },
                      child: context.watch<ReportsNotifier>().isBusy
                          ? const CircularProgressIndicator(
                              color: white,
                            )
                          : const Text(
                              'Submit',
                              style: TextStyle(color: white),
                            ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
