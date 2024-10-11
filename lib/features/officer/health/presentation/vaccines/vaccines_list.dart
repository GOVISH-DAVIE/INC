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

class VaccinesList extends StatefulWidget {
  const VaccinesList({super.key});

  @override
  State<VaccinesList> createState() => _PregnantMomsState();
}

class _PregnantMomsState extends State<VaccinesList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HealthNotifier>().getVaccines();
    });
  }

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Vaccines Issued "),
        ),
        body: context.watch<HealthNotifier>().isBusy
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    ...context
                        .watch<HealthNotifier>()
                        .vaccinesissue
                        .map((e) => Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text("${e.nameOfKid}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              text: "${e.nameOfMother}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)
                                        ]),
                                      ),
                                      Text.rich(
                                        TextSpan(children: [
                                          TextSpan(
                                              text: "Kid's age \t\t",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall
                                                  ?.copyWith(fontSize: 18)),
                                          TextSpan(
                                              text: "${e.age}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)
                                        ]),
                                      ),
                                      Text.rich(
                                        TextSpan(children: [
                                          TextSpan(
                                              text: "Vaccine \t\t",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall
                                                  ?.copyWith(fontSize: 18)),
                                          TextSpan(
                                              text: "${e.typeOfVaccine?.name}"
                                                  .capitalizeFirstofEach,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)
                                        ]),
                                      ),
                                      Text.rich(
                                        TextSpan(children: [
                                          TextSpan(
                                              text: " Issued  on\t\t",
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
