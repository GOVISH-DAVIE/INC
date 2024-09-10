import 'package:cais/features/county_admin/receive/state/receive_relief_notifier.dart';
import 'package:cais/features/officer/admin/relief/state/relief_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReliefReceiveList extends StatefulWidget {
  const ReliefReceiveList({super.key});

  @override
  State<ReliefReceiveList> createState() => _ReliefListState();
}

class _ReliefListState extends State<ReliefReceiveList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          cacheExtent: 5,
          children: [
            ...context.watch<ReceiveReliefNotifier>().relief.map((e) => Card(
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
                                  text: "Source\t\t",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontSize: 18)),
                              TextSpan(
                                  text: "${e.source}",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall)
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
                                  style:
                                      Theme.of(context).textTheme.headlineSmall)
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
