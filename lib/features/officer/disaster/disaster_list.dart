import 'package:cais/features/officer/disaster/model/disaster_model/disaster_model.dart';
import 'package:cais/features/officer/disaster/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisasterList extends StatefulWidget {

  final DisasterModel disaster;
  const DisasterList({super.key, required this.disaster});

  @override
  State<DisasterList> createState() => _DisasterListState();
}

class _DisasterListState extends State<DisasterList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.disaster.name} reports", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.bold
        ),),
      ),
      body: disasterList(context),
    );
  }



    Column disasterList(BuildContext context) {
    return Column(
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
                  "${context.watch<DisasterNotifier>().disasterOccurence.where((element) => element.disasterId == widget.disaster.id).length}",
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
                  .watch<DisasterNotifier>()
                  .disasterOccurence
                  .where((element) => element.disasterId == widget.disaster.id)
                  .map((e) => Card(
                        color: mainColorCard,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title:
                                Text("Home Steads Affected: ${e.homesteads}"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(" Deaths: ${e.deaths}"),
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
    );
  }



}