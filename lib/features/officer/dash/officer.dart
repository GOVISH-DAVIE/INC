import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/features/admin/Village/village.dart';
import 'package:cais/features/officer/Disaster/reports.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/dash/widgets/dashCards.dart';
import 'package:cais/features/officer/education/education.dart';
import 'package:cais/features/officer/reports/reports.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OfficerDash extends StatefulWidget {
  const OfficerDash({super.key});

  @override
  State<OfficerDash> createState() => _OfficerDashState();
}

class _OfficerDashState extends State<OfficerDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: white,
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
              AuthUserOfficerModel user =
                  AuthUserOfficerModel.fromJson(jsonDecode(snap.data!));
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 20),
                    child: Text(
                      "Welcome Back",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 98.0),
                    child: Text(
                      "${user.name}",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30, bottom: 20),
                    child: Divider(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      dashCard(
                          context: context,
                          name: "EDUCATION",
                          to: const OfficerEducation(),
                          isactive: true),
                      dashCard(
                          context: context,
                          name: "Security".toUpperCase(),
                          to: const ReportsOfficer(),
                          isactive: true),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      dashCard(
                          context: context,
                          name: "Disaster".toUpperCase(),
                          to: const DisasterOfficer(),
                          isactive: true),
                      dashCard(
                          context: context,
                          name: "DEMOGRAPHIC",
                          to: const Village(),
                          isactive: false),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      dashCard(
                          context: context,
                          name: "ECONOMIC",
                          to: const Village(),
                          isactive: false),
                      dashCard(
                          context: context,
                          name: "environment".toUpperCase(),
                          to: Village(),
                          isactive: false),
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
