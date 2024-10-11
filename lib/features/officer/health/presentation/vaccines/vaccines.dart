import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/app_common_extentions.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/county_admin/health/state/health_admin.dart';
import 'package:cais/features/officer/auth/login.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/health/presentation/vaccines/vaccines_list.dart';
import 'package:cais/features/officer/health/state/health_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class Vaccines extends StatefulWidget {
  const Vaccines({super.key});

  @override
  State<Vaccines> createState() => _VaccinesState();
}

class _VaccinesState extends State<Vaccines> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HealthAdminNotifier>().getVaccineType();
    });
  }

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vaccines"),
        actions: [
          IconButton(
              onPressed: () {
                context.read<HealthNotifier>().getVaccines();
                context.appNavigatorPush(const VaccinesList());
              },
              icon: const Icon(Icons.list_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FutureBuilder(
            future: getData('auth'),
            builder: (context, snap) {
              if (snap.hasError) {
                return Text("${snap.error}");
              }
              if (!snap.hasData) {
                return const Text("loading");
              }
              if (snap.data == null || snap.data == "") {
                return const OfficerAuth();
              }
              AuthUserOfficerModel user =
                  AuthUserOfficerModel.fromJson(jsonDecode(snap.data!));

              return FormBuilder(
                key: _formKey,
                child: ListView(
                  children: [
                    const Text(
                      "Kid's name",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: mainColor, fontSize: 17),
                    ),
                    FormBuilderTextField(
                      // keyboardType: TextInputType.,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      name: "name_of_kid",
                      onChanged: (val) {
                        print(val); // Print the text value write into TextField
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Mother's name",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: mainColor, fontSize: 17),
                    ),
                    FormBuilderTextField(
                      // keyboardType: TextInputType.,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      name: "name_of_mother",
                      onChanged: (val) {
                        print(val); // Print the text value write into TextField
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Kid's age",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: mainColor, fontSize: 17),
                    ),
                    FormBuilderTextField(
                      // keyboardType: TextInputType.,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      name: "age",
                      onChanged: (val) {
                        print(val); // Print the text value write into TextField
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Vaccine",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: mainColor, fontSize: 17),
                    ),
                    FormBuilderDropdown<int>(
                      name: "vaccineTypeId",
                      decoration: const InputDecoration(
                        hintText: 'Choose an Option',
                      ),
                      items: context
                          .watch<HealthAdminNotifier>()
                          .vaccinetype
                          .map((ward) => DropdownMenuItem(
                                alignment: AlignmentDirectional.center,
                                value: ward.id!,
                                child: Text(ward.name!.capitalizeFirstofEach),
                              ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate and save the form values
                          _formKey.currentState?.saveAndValidate();
                          debugPrint(_formKey.currentState?.value.toString());

                          // On another side, can access all field values without saving form with instantValues
                          _formKey.currentState?.validate();
                          var payload = Map.from(_formKey.currentState!.value);
                          payload["villageId"] = (user.villageId);
                          context
                              .read<HealthNotifier>()
                              .createVaccine(
                                payload: payload,
                              )
                              .then((value) {
                            _formKey.currentState?.reset();
                            Navigator.of(context).pop();
                            context
                                .showCustomSnackBar(" Reported successfully");

                            // Navigator.of(widget.cxn).pop();
                          }).catchError((onError) {
                            logger.wtf(onError);
                            context.showCustomSnackBar(
                                "[Vaccine Issue] An Error Occured",
                                isError: true);
                          });
                        },
                        child: context.watch<HealthNotifier>().isBusy
                            ? const CircularProgressIndicator(
                                color: white,
                              )
                            : const Text(
                                'Submit',
                                style: TextStyle(color: white, fontSize: 30),
                              ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
