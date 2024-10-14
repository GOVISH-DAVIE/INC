import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/admin/relief/relief.dart';
import 'package:cais/features/officer/auth/login.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/dash/widgets/dashCards.dart';
import 'package:cais/features/officer/education/education.dart';
import 'package:cais/features/officer/example/modular.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';

import 'applications/applications.dart';

class AdminDash extends StatefulWidget {
  const AdminDash({super.key});

  @override
  State<AdminDash> createState() => _AdminDashState();
}

class _AdminDashState extends State<AdminDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Admin"),
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

                return SingleChildScrollView(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, right: 18, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        color: mainColorCard,
                        child: ListTile(
                          onTap: () {
                            context.appNavigatorPush(const Relief());
                          },
                          title: Text("RELIEF",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.w400)),
                          subtitle: const Text("Manage received relief"),
                        ),
                      ),
                      Card(
                        color: mainColorCard,
                        child: ListTile(
                          onTap: () {
                            context.appNavigatorPush(const Relief());
                          },
                          title: Text("CITIZEN APPLICATIONS",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.w400)),
                          subtitle: const Text(
                              "Manage citizen applications(IDS, referals etc)"),
                        ),
                      ),
                      Card(
                        color: mainColorCard,
                        child: ListTile(
                          onTap: () {
                            context.appNavigatorPush(const Modular(
                              title: "BARAZA",
                              length: 6,
                            ));
                          },
                          title: Text("BARAZA",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.w400)),
                          subtitle: const Text("BARAZA"),
                        ),
                      ),
                    ],
                  ),
                ));
              }),
        ));
  }
}
