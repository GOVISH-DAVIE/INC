import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/auth/login.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/dash/widgets/dashCards.dart';
import 'package:cais/features/officer/education/education.dart';
import 'package:cais/features/officer/health/presentation/births/births.dart';
import 'package:cais/features/officer/health/presentation/pregnant_moms/pregnant_moms.dart';
import 'package:cais/features/officer/mombasa_ni_yangu/mombasa_dash.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';

import 'vaccines/vaccines.dart';

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
                                  "${user.village?.name}".toUpperCase(),
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
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            dashCard(
                                context: context,
                                name: "Mombasa care ".toUpperCase(),
                                to: const MombasaNiYangu(),
                                // to: const MombasaYanguUsers(),
                                isactive: false),
                            Expanded(
                              child: Container(),
                            )
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
