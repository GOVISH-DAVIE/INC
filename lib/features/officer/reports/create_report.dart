import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/features/officer/reports/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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

          return Padding(
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
                      height: 10,
                    ),
                    ...reportEntries.map((e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.replaceAll("_", " ").capitalizeFirstofEach,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: e,
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
                              .showCustomSnackBar("Ward Created successfully");

                          // Navigator.of(widget.cxn).pop();
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
