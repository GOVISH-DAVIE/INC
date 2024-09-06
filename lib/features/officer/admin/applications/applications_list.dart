import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/admin/applications/state/relief_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApplicationsList extends StatefulWidget {
  const ApplicationsList({super.key});

  @override
  State<ApplicationsList> createState() => _ApplicationsListState();
}

class _ApplicationsListState extends State<ApplicationsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ...context.watch<ApplicationsNotifier>().applicaitons.map((e) => Card(
                color: mainColorCard,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                        "${e.applicationType?.replaceAll("_", " ").capitalizeFirstofEach}"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "Number of Applicants \t\t",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontSize: 18)),
                            TextSpan(
                                text: "${e.dateOfApplication}",
                                style:
                                    Theme.of(context).textTheme.headlineSmall)
                          ]),
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "From \t\t",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontSize: 18)),
                            TextSpan(
                                text: "${e.startDate}",
                                style:
                                    Theme.of(context).textTheme.headlineSmall)
                          ]),
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "To  \t\t",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontSize: 18)),
                            TextSpan(
                                text: "${e.endDate ?? "-"}",
                                style:
                                    Theme.of(context).textTheme.headlineSmall)
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
