import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/features/admin/genders/models/gender_model/gender_model.dart';
import 'package:cais/features/admin/schools_cartegories/models/school_cartegories_model/school_cartegories_model.dart';
import 'package:cais/features/officer/education/create_school.dart';
import 'package:cais/features/officer/education/models/school_response_model/school_response_model.dart';
import 'package:cais/features/officer/education/state/education_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class AddTeacher extends StatefulWidget {
  final SchoolResponseModel school;
  const AddTeacher({super.key, required this.school});

  @override
  State<AddTeacher> createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
                        child: FormBuilder(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Update Teachers Reacords",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Male",
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: mainColor, fontSize: 17),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    FormBuilderTextField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      name: "male",
                                      onChanged: (val) {
                                        print(
                                            val); // Print the text value write into TextField
                                      },
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Female",
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: mainColor, fontSize: 17),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    FormBuilderTextField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      name: "female",
                                      onChanged: (val) {
                                        print(
                                            val); // Print the text value write into TextField
                                      },
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "Other",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: mainColor, fontSize: 17),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    FormBuilderTextField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      name: "other",
                                      onChanged: (val) {
                                        print(
                                            val); // Print the text value write into TextField
                                      },
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Validate and save the form values
                                    _formKey.currentState?.saveAndValidate();
                                    debugPrint(_formKey.currentState?.value
                                        .toString());

                                    // On another side, can access all field values without saving form with instantValues
                                    _formKey.currentState?.validate();
                                    var payload =
                                        Map.from(_formKey.currentState!.value);
                                    payload["schoolId"] = (widget.school.id);
                                    payload["teacherDesignationId"] = (2);
                                    print(payload);
                                    context
                                        .read<EducationNotifier>()
                                        .createTeachers(payload: payload)
                                        .then((value) {
                                      context.showCustomSnackBar(
                                          "Updated successfully");

                                      Navigator.of(cxn).pop();
                                    });
                                  },
                                  child:
                                      context.watch<EducationNotifier>().isBusy
                                          ? const CircularProgressIndicator(
                                              color: white,
                                            )
                                          : const Text(
                                              'Submit',
                                              style: TextStyle(color: white),
                                            ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
              );
            },
          );
        },
        child: const Row(
          children: [Icon(Icons.edit), Text("Update Teachers Data")],
        ));
  }
}
