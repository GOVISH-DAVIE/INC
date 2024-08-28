import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/app_common_extentions.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/disaster/disaster_list.dart';
import 'package:cais/features/officer/disaster/model/disaster_model/disaster_model.dart';
import 'package:cais/features/officer/disaster/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

import '../disaster/create_report.dart';

class MakeDisaster extends StatefulWidget {
  final DisasterModel disaster;
  const MakeDisaster({super.key, required this.disaster});

  @override
  State<MakeDisaster> createState() => _MakeReportState();
}

class _MakeReportState extends State<MakeDisaster> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<DisasterNotifier>()
      ..getCategories()
      ..getReportOccurences();
  }

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // foregroundColor: white,
          title: Text(
            "${widget.disaster.name} Details",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {
              context.appNavigatorPush(DisasterList(disaster: widget.disaster,));
            }, icon: const Icon(Icons.list_outlined))
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
                            const Text(
                              "Description",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: "description",
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
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Affected Homesteads",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: "homesteads",
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
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Deaths",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: "deaths",
                              onChanged: (val) {
                                print(
                                    val); // Print the text value write into TextField
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
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
                              debugPrint(
                                  _formKey.currentState?.value.toString());

                              // On another side, can access all field values without saving form with instantValues
                              _formKey.currentState?.validate();
                              var payload =
                                  Map.from(_formKey.currentState!.value);
                              payload["villageId"] = (user.villageId);
                              payload["disasterId"] = (widget.disaster.id);
                              print(payload);
                              context
                                  .read<DisasterNotifier>()
                                  .createReport(payload: payload)
                                  .then((value) {
                                context.showCustomSnackBar(
                                    "Disaster Reported successfully");

                                // Navigator.of(widget.cxn).pop();
                              }).catchError((onError) {
                                context.showCustomSnackBar(
                                    "[Disaster] An Error Occured",
                                    isError: true);
                              });
                            },
                            child: context.watch<DisasterNotifier>().isBusy
                                ? const CircularProgressIndicator(
                                    color: white,
                                  )
                                : const Text(
                                    'Submit',
                                    style: TextStyle(color: white),
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
