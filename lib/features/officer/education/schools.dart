import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/genders/state/gender_notifier.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/education/create_school.dart';
import 'package:cais/features/officer/education/state/education_notifier.dart';
import 'package:cais/features/officer/education/widgets/create_students.dart';
import 'package:cais/features/officer/education/widgets/create_teacher.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OfficerSchools extends StatefulWidget {
  final AuthUserOfficerModel user;
  const OfficerSchools({super.key, required this.user});

  @override
  State<OfficerSchools> createState() => _GendersState();
}

class _GendersState extends State<OfficerSchools> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EducationNotifier>().getSchools();
      context.read<EducationNotifier>().getSchoolsCategories();
    });
  }

  String searchValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // foregroundColor: white,
        title: Text(
            "Schools  in ${widget.user.village?.name.toString().capitalizeFirstofEach}",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: white)),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: mainColor,
          onPressed: () {
            // we display showModalBottomSheet
            showDialog<void>(
              // context and builder are
              // required properties in this widget
              context: context,
              builder: (BuildContext cxn) {
                // we set up a container inside which
                // we create center column and display text

                // Returning SizedBox instead of a Container
                return Dialog(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .6,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CreateSchool(
                            cxn: cxn,
                            wardId: widget.user.village!.wardId!,
                          )),
                    ),
                  ),
                );
              },
            );
          },
          label: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.add,
                  color: white,
                ),
              ),
              Text(
                "Add New School",
                style: TextStyle(color: white),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.height,
              child: Card(
                color: mainColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total Schools  ",
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
                      "${context.watch<EducationNotifier>().schools.where((element) => element.wardId == widget.user.village?.wardId).toList().length}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchValue = value;
                  });
                },
                decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "search"),
              ),
            ),
            Expanded(
                child: context.watch<EducationNotifier>().isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : searchValue.isNotEmpty
                        ? ListView.builder(
                            itemCount: context
                                .watch<EducationNotifier>()
                                .schools
                                .where((element) => element.name!
                                    .toLowerCase()
                                    .contains(searchValue))
                                .length,
                            itemBuilder: (cxn, index) => Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text(
                                      "${context.watch<EducationNotifier>().schools.where((element) => element.name!.toLowerCase().contains(searchValue)).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<GenderNotifier>()
                                              .genders[index]
                                              .description ??
                                          ''),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Divider(),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.edit)),
                                          IconButton(
                                              color: Colors.redAccent,
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.redAccent,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemCount: context
                                .watch<EducationNotifier>()
                                .schools
                                .where((element) =>
                                    element.wardId ==
                                    widget.user.village?.wardId)
                                .toList()
                                .length,
                            itemBuilder: (cxn, index) => Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text(
                                      "${context.watch<EducationNotifier>().schools.where((element) => element.wardId == widget.user.village?.wardId).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Divider(),
                                      ListTile(
                                        title: const Text("Number of Students"),
                                        subtitle: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "${context.watch<EducationNotifier>().schools[index].schoolStudents!.isEmpty ? 0 : context.watch<EducationNotifier>().schools[index].schoolStudents!.last.male! + context.watch<EducationNotifier>().schools[index].schoolStudents!.last.female! + context.watch<EducationNotifier>().schools[index].schoolStudents!.last.other!}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                            ),
                                            AddStudents(
                                              school: context
                                                  .watch<EducationNotifier>()
                                                  .schools[index],
                                            )
                                          ],
                                        ),
                                      ),
                                      const Divider(),
                                      ListTile(
                                        title: const Text("Number of Teachers"),
                                        subtitle: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            context
                                                    .watch<EducationNotifier>()
                                                    .schools[index]
                                                    .schoolTeachers!
                                                    .isEmpty
                                                ? const Text("")
                                                : Text(
                                                    "${context.watch<EducationNotifier>().schools[index].schoolTeachers!.last.male! + context.watch<EducationNotifier>().schools[index].schoolTeachers!.last.female! + context.watch<EducationNotifier>().schools[index].schoolTeachers!.last.other!}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium,
                                                  ),
                                            AddTeacher(
                                              school: context
                                                  .watch<EducationNotifier>()
                                                  .schools[index],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ))
          ],
        ),
      ),
    );
  }
}
