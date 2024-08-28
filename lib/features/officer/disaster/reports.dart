import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/disaster/make_report.dart';
import 'package:cais/features/officer/disaster/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisasterOfficer extends StatefulWidget {
  const DisasterOfficer({super.key});

  @override
  State<DisasterOfficer> createState() => _ReportsOfficerState();
}

class _ReportsOfficerState extends State<DisasterOfficer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<DisasterNotifier>()
      ..getCategories()
      ..getReportOccurences();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // foregroundColor: white,
        title:  Text("Report a Disaster", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.bold
        ),),


      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
        child: Column(
          children: [
            ...context.watch<DisasterNotifier>().disaster.map((e) => Card(
                  color: mainColorCard,
                  child: ListTile(
                    onTap: () {
                      context.appNavigatorPush(MakeDisaster(disaster: e));
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
