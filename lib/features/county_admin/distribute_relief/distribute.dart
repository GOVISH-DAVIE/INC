import 'package:cais/choices.dart';
import 'package:cais/core/utilities/app_common_extentions.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/county_admin/distribute_relief/distribution.dart';
import 'package:cais/features/county_admin/distribute_relief/distribution_list.dart';
import 'package:cais/features/county_admin/distribute_relief/state/distribution_notifier.dart';
import 'package:cais/features/officer/admin/relief/models/relief_distribution/relief_distribution.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DistributeRelief extends StatefulWidget {
  const DistributeRelief({super.key});

  @override
  State<DistributeRelief> createState() => _DistributeReliefState();
}

class _DistributeReliefState extends State<DistributeRelief> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Select Relief Type",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  context
                      .read<DistributeReliefNotifier>()
                      .getReliefDistribution();
                  context.appNavigatorPush(const DistributionList());
                },
                icon: Icon(Icons.list))
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ...reliefChoices.map((e) => Card(
                  color: mainColorCard,
                  child: ListTile(
                    // contentPadding: EdgeInsets.only(top: ),
                    onTap: () {
                      context.appNavigatorPush(ReliefDistributionPage(type: e));
                    },
                    title: Text(
                      e.replaceAll("_", " ").capitalizeFirstofEach,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
