import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/auth/login.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/dash/widgets/dashCards.dart';
import 'package:cais/features/officer/education/education.dart';
import 'package:cais/features/officer/example/modular.dart';
import 'package:cais/features/officer/mombasa_ni_yangu/mombasa_dash.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';

class EducationDash extends StatefulWidget {
  const EducationDash({super.key});

  @override
  State<EducationDash> createState() => _EducationDashState();
}

class _EducationDashState extends State<EducationDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Education"),
        ),
        body: SafeArea(
          child: FutureBuilder(
              future: getData("auth"),
              builder: (context, snap) {
                if (snap.hasError) {
                  return Text("${snap.error}");
                }
                if (!snap.hasData) {
                  return const Text("loading");
                }
                if (snap.data == null || snap.data == "") {
                  return const OfficerAuth();
                }

                AuthUserOfficerModel user =
                    AuthUserOfficerModel.fromJson(jsonDecode(snap.data!));
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18, top: 20),
                        child: Column(
                          children: [
                            Card(
                              color: mainColorCard,
                              child: ListTile(
                                onTap: () {
                                  context.appNavigatorPush(
                                      const OfficerEducation());
                                },
                                title: Text("School Demographics",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400)),
                                subtitle: const Text(
                                    "Manage students and teachers data"),
                              ),
                            ),
                            Card(
                              color: mainColorCard,
                              child: ListTile(
                                onTap: () {
                                  context.appNavigatorPush(const Modular(
                                    title:
                                        "Children With Disability and autism",
                                    length: 6,
                                  ));
                                },
                                title: Text(
                                    "Children With Disability and autism",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400)),
                                subtitle: const Text(""),
                              ),
                            ),
                            Card(
                              color: mainColorCard,
                              child: ListTile(
                                onTap: () {
                                  context.appNavigatorPush(const Modular(
                                    title: "Elimu/Scholarship Fund ",
                                    length: 4,
                                  ));
                                },
                                title: Text("Elimu/Scholarship Fund ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400)),
                                subtitle: const Text(""),
                              ),
                            ),
                            Card(
                              color: mainColorCard,
                              child: ListTile(
                                onTap: () {
                                  context.appNavigatorPush(const Modular(
                                    title: "Feeding Programme",
                                    length: 4,
                                  ));
                                },
                                title: Text("Feeding Programme",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400)),
                                subtitle: const Text(""),
                              ),
                            ),
                            Card(
                              color: mainColorCard,
                              child: ListTile(
                                onTap: () {
                                  context.appNavigatorPush(const Modular(
                                    title: "Sanitary Pad Distribution",
                                    length: 4,
                                  ));
                                },
                                title: Text("Sanitary Pad Distribution",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400)),
                                subtitle: const Text(""),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
