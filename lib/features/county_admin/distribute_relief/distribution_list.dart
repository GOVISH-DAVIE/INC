import 'package:cais/features/county_admin/distribute_relief/state/distribution_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DistributionList extends StatefulWidget {
  const DistributionList({super.key});

  @override
  State<DistributionList> createState() => _DistributionListState();
}

class _DistributionListState extends State<DistributionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: context.watch<DistributeReliefNotifier>().isBusy
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                cacheExtent: 5,
                children: [
                  ...context
                      .watch<DistributeReliefNotifier>()
                      .reliefDistribution
                      .map((e) => Card(
                            color: mainColorCard,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text("${e.reliefType}"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(),
                                    Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                            text: "Sent To\t\t",
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
                                            text: "Quantity Received \t\t",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall
                                                ?.copyWith(fontSize: 18)),
                                        TextSpan(
                                            text: "${e.quantity} ${e.type}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall)
                                      ]),
                                    ),
                                    Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                            text: " Received  on\t\t",
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
