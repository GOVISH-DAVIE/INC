import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/reports/make_report.dart';
import 'package:cais/features/officer/reports/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportsOfficer extends StatefulWidget {
  const ReportsOfficer({super.key});

  @override
  State<ReportsOfficer> createState() => _ReportsOfficerState();
}

class _ReportsOfficerState extends State<ReportsOfficer> {
  @override
  void initState() {
    super.initState();
    context.read<ReportsNotifier>()
      ..getCategories()
      ..getReportOccurences();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
        child: Column(
          children: [
            ...context.watch<ReportsNotifier>().reports.map((e) => Card(
                  color: mainColorCard,
                  child: ListTile(
                    onTap: () {
                      context.appNavigatorPush(MakeReport(report: e));
                    },
                    title: Text("${e.name}"),
                    subtitle: Text("${e.description}"),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
