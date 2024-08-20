import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/features/admin/genders/models/gender_model/gender_model.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/education/state/education_notifier.dart';
import 'package:cais/features/officer/reports/create_report.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/features/officer/reports/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class MakeReport extends StatefulWidget {
  final ReportsCategoryModel report;
  const MakeReport({super.key, required this.report});

  @override
  State<MakeReport> createState() => _MakeReportState();
}

class _MakeReportState extends State<MakeReport> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ReportsNotifier>()
      ..getCategories()
      ..getReportOccurences();
  }

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: white,
          title: Text("${widget.report.name} Detail"),
        ),
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: mainColor,
            onPressed: () {
              // we display showModalBottomSheet
              showDialog<void>(
                // context and builder are
                // required properties in this widget
                context: context,
                builder: (BuildContext cxn) {
                  // we set up a container inside which
                  // we create center column and display text

                  // Returning SizedBox instead of a Container
                  return Dialog(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * .6,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: MakeReportForm(
                              cxn: cxn,
                              report: widget.report,
                            )),
                      ),
                    ),
                  );
                },
              );
            },
            label: const Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.add,
                    color: white,
                  ),
                ),
                Text(
                  "Add New Ward",
                  style: TextStyle(color: white),
                ),
              ],
            )),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.height,
              child: Card(
                color: mainColor.withOpacity(.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total Reports",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: white),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    Text(
                      "${context.watch<ReportsNotifier>().reportOccurence.where((element) => element.reportsId == widget.report.id).length}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  ...context
                      .watch<ReportsNotifier>()
                      .reportOccurence
                      .map((e) => Card(
                            color: mainColorCard,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(
                                    " Who was affected: ${e.whoWasAffected}"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(" Suspect: ${e.suspect}"),
                                    Text(" Description: ${e.description}"),
                                  ],
                                ),
                              ),
                            ),
                          ))
                ],
              ),
            ))
          ],
        ));
  }
}
