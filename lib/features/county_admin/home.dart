import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/Village/village.dart';
import 'package:cais/features/county_admin/country_dashboard/dashboard.dart';
import 'package:cais/features/county_admin/messages/messages.dart';
import 'package:cais/features/county_admin/mombasa_yangu/mombasa_yangu_assign_jobs.dart';
import 'package:cais/features/county_admin/mombasa_yangu/mombasa_yangu_users.dart';
import 'package:cais/features/county_admin/relief/relief_dash.dart';
import 'package:cais/features/officer/Disaster/reports.dart';
import 'package:cais/features/officer/admin/admin_dash.dart';
import 'package:cais/features/officer/auth/login.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/dash/widgets/dashCards.dart';
import 'package:cais/features/officer/education/education.dart';
import 'package:cais/features/officer/projects/projects.dart';
import 'package:cais/features/officer/reports/reports.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';

class CountyAdmin extends StatefulWidget {
  const CountyAdmin({super.key});

  @override
  State<CountyAdmin> createState() => _OfficerDashState();
}

class _OfficerDashState extends State<CountyAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Image.asset(
                      "assets/logo2.png",
                      width: 300,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 18.0, top: 20),
                    //   child: Text(
                    //     "Welcome Back",
                    //     style: Theme.of(context)
                    //         .textTheme
                    //         .displaySmall
                    //         ?.copyWith(fontWeight: FontWeight.w700),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0, top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "${user.name}",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.only(left: 23.0, right: 30, bottom: 20),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 23.0, right: 30, bottom: 20),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            color: textThemeGrey.withOpacity(.1),
                            border: Border.all(color: textThemeGrey),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on_outlined),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "Nairobi".toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30, bottom: 20),
                      child: SizedBox(),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        dashCard(
                            context: context,
                            name: "Relief".toUpperCase(),
                            to: const ReliefDash(),
                            isactive: true),
                        dashCard(
                            context: context,
                            name: "Dashboard".toUpperCase(),
                            to: const CountyDashboard(),
                            isactive: true),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        dashCard(
                            context: context,
                            name: "Mombasa Yangu".toUpperCase(),
                            to: const MombasaYanguUsers(),
                            isactive: true),
                        dashCard(
                            context: context,
                            name: "assign Jobs".toUpperCase(),
                            to: const MombasaYanguUsersJobs(),
                            isactive: true),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        dashCard(
                            context: context,
                            name: "Messages Dashboard".toUpperCase(),
                            to: const MessagesDashboard(),
                            isactive: true),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
