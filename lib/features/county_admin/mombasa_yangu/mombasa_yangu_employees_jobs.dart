import 'package:cais/features/county_admin/mombasa_yangu/state/receive_relief_notifier.dart';
import 'package:cais/features/county_admin/receive/state/receive_relief_notifier.dart';
import 'package:cais/features/officer/admin/relief/state/relief_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MombasaYanguEmployeesJobs extends StatefulWidget {
  const MombasaYanguEmployeesJobs({super.key});

  @override
  State<MombasaYanguEmployeesJobs> createState() => _ReliefListState();
}

class _ReliefListState extends State<MombasaYanguEmployeesJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          cacheExtent: 5,
          children: [
            ...context
                .watch<MombasaYanguNotifier>()
                .mombasaYanguUsersJobs
                .map((e) => Card(
                      color: mainColorCard,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text("${e.user?.name}"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Divider(),
                              Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text: "Designation\t\t",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(fontSize: 18)),
                                  TextSpan(
                                      text: "${e.user?.userType}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall)
                                ]),
                              ),
                              Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text: "Job\t\t",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(fontSize: 18)),
                                  TextSpan(
                                      text: "${e.job}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall)
                                ]),
                              ),
                              Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text: "Ward\t\t",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(fontSize: 18)),
                                  TextSpan(
                                      text: "${e.ward?.name}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall)
                                ]),
                              ),
                              Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text: " Assigned  on\t\t",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(fontSize: 18)),
                                  TextSpan(
                                      text: "${e.dateAndTime}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(fontSize: 16))
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
