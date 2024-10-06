import 'dart:convert';

import 'package:cais/choices.dart';
import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/county_admin/mombasa_yangu/mombasa_yangu_employees.dart';
import 'package:cais/features/county_admin/mombasa_yangu/mombasa_yangu_employees_jobs.dart';
import 'package:cais/features/county_admin/mombasa_yangu/state/receive_relief_notifier.dart';
import 'package:cais/features/county_admin/receive/receive_relief_list.dart';
import 'package:cais/features/county_admin/receive/state/receive_relief_notifier.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MombasaYanguUsersJobs extends StatefulWidget {
  const MombasaYanguUsersJobs({super.key});

  @override
  State<MombasaYanguUsersJobs> createState() => _ReceiveReliefState();
}

class _ReceiveReliefState extends State<MombasaYanguUsersJobs> {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MombasaYanguNotifier>().getWards();
    context.read<MombasaYanguNotifier>().getReceivership();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // foregroundColor: white,
          title: Text(
            "Assign jobs",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),

          actions: [
            IconButton(
                onPressed: () {
                  context.read<MombasaYanguNotifier>().getJobs();
                  context.appNavigatorPush(const MombasaYanguEmployeesJobs());
                },
                icon: const Icon(Icons.list))
          ],
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
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Select Employee",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderDropdown<int>(
                              name: "mombasaYanguId",
                              decoration: const InputDecoration(
                                hintText: 'Choose an Option',
                              ),
                              items: context
                                  .watch<MombasaYanguNotifier>()
                                  .employees
                                  .map((ward) => DropdownMenuItem(
                                        alignment: AlignmentDirectional.center,
                                        value: ward.id,
                                        child: Text(ward.name!),
                                      ))
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Jobs ",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              // keyboardType: TextInputType.,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: "job",
                              onChanged: (val) {
                                print(
                                    val); // Print the text value write into TextField
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Select Ward",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderDropdown<int>(
                              name: "wardId",
                              decoration: const InputDecoration(
                                hintText: 'Choose an Option',
                              ),
                              items: context
                                  .watch<MombasaYanguNotifier>()
                                  .wardResponseModel
                                  .map((ward) => DropdownMenuItem(
                                        alignment: AlignmentDirectional.center,
                                        value: ward.id,
                                        child: Text(ward.name!),
                                      ))
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
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
                              context
                                  .read<MombasaYanguNotifier>()
                                  .createUserJob(
                                    payload: payload,
                                  )
                                  .then((value) {
                                _formKey.currentState?.reset();
                                Navigator.of(context).pop();
                                context.showCustomSnackBar(
                                    "Data Reported successfully");

                                // Navigator.of(widget.cxn).pop();
                              }).catchError((onError) {
                                logger.wtf(onError);
                                context.showCustomSnackBar(
                                    "[Relief Receivership] An Error Occured",
                                    isError: true);
                              });
                            },
                            child: context.watch<ReceiveReliefNotifier>().isBusy
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
