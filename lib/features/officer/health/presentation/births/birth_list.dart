import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/auth/login.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/health/presentation/health.dart';
import 'package:cais/features/officer/health/state/health_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class BirthList extends StatefulWidget {
  const BirthList({super.key});

  @override
  State<BirthList> createState() => _PregnantMomsState();
}

class _PregnantMomsState extends State<BirthList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HealthNotifier>().getBirth();
    });
  }

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Births "),
        ),
        body: context.watch<HealthNotifier>().isBusy
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    ...context.watch<HealthNotifier>().births.map((e) => Card(
                          color: mainColorCard,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text("${e.name}"),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Divider(),
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: "Mother's Name\t\t",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall
                                              ?.copyWith(fontSize: 18)),
                                      TextSpan(
                                          text: "${e.parent}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall)
                                    ]),
                                  ),
                                  // Text.rich(
                                  //   TextSpan(children: [
                                  //     TextSpan(
                                  //         text: "Kids to bore \t\t",
                                  //         style: Theme.of(context)
                                  //             .textTheme
                                  //             .headlineSmall
                                  //             ?.copyWith(fontSize: 18)),
                                  //     TextSpan(
                                  //         text: "${e.kidsToBore}",
                                  //         style: Theme.of(context)
                                  //             .textTheme
                                  //             .headlineSmall)
                                  //   ]),
                                  // ),
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: " Reported  on\t\t",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall
                                              ?.copyWith(fontSize: 18)),
                                      TextSpan(
                                          text: "${e.createdAt}",
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
              ));
  }
}
