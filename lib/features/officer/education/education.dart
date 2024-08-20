import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/Village/village.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/dash/widgets/dashCards.dart';
import 'package:cais/features/officer/education/models/school_response_model/school_response_model.dart';
import 'package:cais/features/officer/education/schools.dart';
import 'package:cais/features/officer/education/state/education_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class OfficerEducation extends StatefulWidget {
  const OfficerEducation({super.key});

  @override
  State<OfficerEducation> createState() => _OfficerDashState();
}

class _OfficerDashState extends State<OfficerEducation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EducationNotifier>()
        ..getSchools()
        ..getSchoolsCategories()
        ..getGenders()
        ..getDesignation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: white,
      ),
      body: SafeArea(
        child: FutureBuilder(
            future: getData("auth"),
            builder: (context, snap) {
              if (snap.hasError) {
                return Text("${snap.error}");
              }
              if ( !snap.hasData ) {
                return const CircularProgressIndicator();
              }
              AuthUserOfficerModel user =
                  AuthUserOfficerModel.fromJson(jsonDecode(snap.data!));
              return Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width * .9,
                      child: Card(
                        color: Color.fromARGB(255, 229, 227, 227),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Schools in your Location',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                "${context.watch<EducationNotifier>().schools.where((element) => element.wardId == user.village?.wardId).toList().length}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: 180,
                                    child: OutlinedButton(
                                      onPressed: () {
                                        context.appNavigatorPush(OfficerSchools(
                                          user: user,
                                        ));
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.settings),
                                          Text('manage Schools')
                                        ],
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width * .9,
                      child: Card(
                        color: Color.fromARGB(255, 229, 227, 227),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Teachers in your Location',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                "${context.watch<EducationNotifier>().schools.where((element) => element.wardId == user.village?.wardId).fold<int>(0, (value, element) => value + (((element as SchoolResponseModel).schoolTeachers!.isEmpty) ? 0 : (element).schoolTeachers!.fold(0, (previousValue, element) => previousValue + element.male!+ element.female!+element.other!)))}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width * .9,
                      child: Card(
                        color: Color.fromARGB(255, 229, 227, 227),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Students in your Location',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                "${context.watch<EducationNotifier>().schools.where((element) => element.wardId == user.village?.wardId).fold<int>(0, (value, element) => value + (((element as SchoolResponseModel).schoolStudents!.isEmpty) ? 0 : (element).schoolStudents!.fold(0, (previousValue, element) => previousValue! + element.male!+ element.female!+element.other!)!))}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width * .9,
                      child: Card(
                        color: Color.fromARGB(255, 229, 227, 227),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Students/Teacher Ratio',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                              (context.watch<EducationNotifier>().schools.where((element) => element.wardId == user.village?.wardId).fold<int>(0, (value, element) => value + (((element as SchoolResponseModel).schoolStudents!.isEmpty) ? 0 : (element).schoolStudents!.fold(0, (previousValue, element) => previousValue! + element.male!+ element.female!+element.other!)!))/   context.watch<EducationNotifier>().schools.where((element) => element.wardId == user.village?.wardId).fold<int>(0, (value, element) => value + (((element as SchoolResponseModel).schoolTeachers!.isEmpty) ? 0 : (element).schoolTeachers!.fold(0, (previousValue, element) => previousValue! + element.male!+ element.female!+element.other!)!))
                             ).toStringAsFixed(1),
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
