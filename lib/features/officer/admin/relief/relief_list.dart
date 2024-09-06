import 'package:cais/features/officer/admin/relief/state/relief_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReliefList extends StatefulWidget {
  const ReliefList({super.key});

  @override
  State<ReliefList> createState() => _ReliefListState();
}

class _ReliefListState extends State<ReliefList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          cacheExtent: 5,
          children: [
            ...context.watch<ReliefNotifier>().relief.map((e) => 
            
            Card(
                  color: mainColorCard,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text("${e.typeOfRelief}"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(),
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "Number of People Helped \t\t",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontSize: 18)),
                              TextSpan(
                                  text: "${e.numberOfPeopleGiven}",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall)
                            ]),
                          ),
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "Quantity Distributed \t\t",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontSize: 18)),
                              TextSpan(
                                  text: "${e.quantityDistributed}",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall)
                            ]),
                          ),
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "Distributed on \t\t",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontSize: 18)),
                              TextSpan(
                                  text: "${e.relief_date ?? "-"}",
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
      ),
    );
  }
}
