import 'dart:convert';
import 'dart:io';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/app_common_extentions.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/disaster/state/reports_notifier.dart';
import 'package:cais/features/officer/projects/state/project_list.dart';
import 'package:cais/features/officer/projects/state/project_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  List<String> options = ["Completed", "Ongoing", "Stalled", "Not_Started"];
  @override
  void initState() {
    
    super.initState();
    context.read<ProjectNotifier>().getProjects();
  }

  File? image;

  bool noFileError = false;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
      setState(() {
        noFileError = false;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
      setState(() {
        noFileError = false;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // foregroundColor: white,
          title: Text(
            " Projects",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  context.appNavigatorPush(const ProjectList());
                },
                icon: const Icon(Icons.list_outlined))
          ],
        ),
        body: FutureBuilder(
            future: getData("auth"),
            builder: (context, snap) {
              if (snap.hasError) {
                return Text("${snap.error}");
              }
              AuthUserOfficerModel user =
                  AuthUserOfficerModel.fromJson(jsonDecode(snap.data!));

              return Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
                child: FormBuilder(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Project Name",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: "project_name",
                              onChanged: (val) {
                                print(
                                    val); // Print the text value write into TextField
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Start Date",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderDateTimePicker(
                              name: "start_date",
                              format: dateFormat,
                              lastDate: DateTime.now(),

                              // controller: dateFormat,

                              valueTransformer: (value) {
                                if (value == null) {
                                  return null;
                                } else {
                                  return DateFormat('yyyy-MM-dd').format(value);
                                }
                              },
                              initialEntryMode:
                                  DatePickerEntryMode.calendarOnly,
                              // initialValue: DateTime.now(),
                              inputType: InputType.date,

                              onChanged: (value) {
                                if (value == null) {
                                  return;
                                }
                                // value?.toIso8601String();
                                String string = dateFormat.format(value);

                                print(string);
                                // return string;

                                // value = string; // print(string);
                                // print(
                                //     _formKey.currentState!.value);
                                // _formKey.currentState!
                                //     .fields['date']?.value
                                //     .toString();
                              },
                              // controller: string,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () {
                                    // print(_formKey
                                    //     .currentState!.value);
                                    // return DateTimeField.convert(await _showTimePicker(context, currentValue) ?? TimeOfDay.fromDateTime(currentValue));
                                    _formKey.currentState!.fields["start_date"]
                                        ?.didChange(null);
                                  },
                                ),
                              ),
                              // initialTime: const TimeOfDay(hour: 8, minute: 0),
                              // locale: const Locale.fromSubtags(languageCode: 'fr'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Proposed End Date",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderDateTimePicker(
                              name: "proposed_date",
                              format: dateFormat,
                              initialDate: DateTime.now(),

                              // controller: dateFormat,

                              valueTransformer: (value) {
                                if (value == null) {
                                  return null;
                                } else {
                                  return DateFormat('yyyy-MM-dd').format(value);
                                }
                              },
                              initialEntryMode:
                                  DatePickerEntryMode.calendarOnly,
                              // initialValue: DateTime.now(),
                              inputType: InputType.date,

                              onChanged: (value) {
                                if (value == null) {
                                  return;
                                }
                                // value?.toIso8601String();
                                String string = dateFormat.format(value);

                                print(string);
                                // return string;

                                // value = string; // print(string);
                                // print(
                                //     _formKey.currentState!.value);
                                // _formKey.currentState!
                                //     .fields['date']?.value
                                //     .toString();
                              },
                              // controller: string,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () {
                                    // print(_formKey
                                    //     .currentState!.value);
                                    // return DateTimeField.convert(await _showTimePicker(context, currentValue) ?? TimeOfDay.fromDateTime(currentValue));
                                    _formKey.currentState!.fields["start_date"]
                                        ?.didChange(null);
                                  },
                                ),
                              ),
                              // initialTime: const TimeOfDay(hour: 8, minute: 0),
                              // locale: const Locale.fromSubtags(languageCode: 'fr'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Contractor Name ",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderTextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              name: "contractor_name",
                              onChanged: (val) {
                                print(
                                    val); // Print the text value write into TextField
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Project Status",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: mainColor, fontSize: 17),
                            ),
                            FormBuilderDropdown<String>(
                              name: "project_status",
                              decoration: InputDecoration(
                                suffix: IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () {
                                    _formKey
                                        .currentState!.fields["project_status"]
                                        ?.reset();
                                  },
                                ),
                                hintText: 'Choose an Option',
                              ),
                              items: options
                                  .map((option) => DropdownMenuItem(
                                        alignment: AlignmentDirectional.center,
                                        value: option,
                                        child: Text(option),
                                      ))
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  pickImageFromCamera();
                                },
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.camera_alt,
                                      size: 40,
                                    ),
                                    Text("Camera")
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  pickImage();
                                },
                                child: const Column(
                                  children: [
                                    Icon(Icons.folder_open, size: 40),
                                    Text("From gallery")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (image != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 28.0),
                            child: Image.file(
                              image!,
                              height: 200,
                            ),
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate and save the form values
                              _formKey.currentState?.saveAndValidate();
                              debugPrint(
                                  _formKey.currentState?.value.toString());

                              // On another side, can access all field values without saving form with instantValues
                              _formKey.currentState?.validate();
                              var payload =
                                  Map.from(_formKey.currentState!.value);
                              payload["villageId"] = (user.villageId);
                              context
                                  .read<ProjectNotifier>()
                                  .createProject(payload: payload, img: image!)
                                  .then((value) {
                                _formKey.currentState?.reset();
                                Navigator.of(context).pop();
                                context.showCustomSnackBar(
                                    "Projects Reported successfully");

                                // Navigator.of(widget.cxn).pop();
                              }).catchError((onError) {
                                logger.wtf(onError);
                                context.showCustomSnackBar(
                                    "[Projects] An Error Occured",
                                    isError: true);
                              });
                            },
                            child: context.watch<ProjectNotifier>().isBusy
                                ? const CircularProgressIndicator(
                                    color: white,
                                  )
                                : const Text(
                                    'Submit',
                                    style:
                                        TextStyle(color: white, fontSize: 30),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
