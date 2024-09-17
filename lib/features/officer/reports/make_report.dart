import 'dart:convert';
import 'dart:io';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/features/officer/reports/report_list.dart';
import 'package:cais/features/officer/reports/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MakeReport extends StatefulWidget {
  final ReportsCategoryModel report;
  const MakeReport({super.key, required this.report});

  @override
  State<MakeReport> createState() => _MakeReportState();
}

class _MakeReportState extends State<MakeReport> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ReportsNotifier>()
      ..getCategories()
      ..getReportOccurences();
  }

  List<String> genderOptions = ['Adult', 'Minor'];

  DateFormat dateFormat = DateFormat('yyyy-MM-dd HH:mm');

  File? image;

  bool noFileError = false;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery,imageQuality: 40);
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
      final image = await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 40);
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
          backgroundColor: Colors.transparent,
          // foregroundColor: white,
          title: Text("${widget.report.name} ",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),

          actions: [
            IconButton(
                onPressed: () {
                  context.appNavigatorPush(SecurityList(
                    report: widget.report,
                  ));
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
                        // Text(
                        //   "Report an Incident ",
                        //   style: Theme. of(context).textTheme.headlineMedium,
                        // ),
                        // const Divider(),
                        const SizedBox(
                          height: 30,
                        ),
                        ...widget.report.fields!.map((e) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    e.name!
                                        .replaceAll("_", " ")
                                        .trim()
                                        .capitalize(),
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                        color: mainColor, fontSize: 17),
                                  ),
                                ),
                                e.type == "select"
                                    ? FormBuilderDropdown<String>(
                                        name: e.name!,
                                        decoration: InputDecoration(
                                          suffix: IconButton(
                                            icon: const Icon(Icons.close),
                                            onPressed: () {
                                              _formKey
                                                  .currentState!.fields[e.name]
                                                  ?.reset();
                                            },
                                          ),
                                          hintText: 'Choose an Option',
                                        ),
                                        items: e.options!
                                            .map((gender) => DropdownMenuItem(
                                                  alignment:
                                                      AlignmentDirectional
                                                          .center,
                                                  value: gender,
                                                  child: Text(gender),
                                                ))
                                            .toList(),
                                      )
                                    : e.type == 'date'
                                        ? FormBuilderDateTimePicker(
                                            name: e.name!,
                                            format: dateFormat,
                                            lastDate: DateTime.now(),

                                            // controller: dateFormat,

                                            valueTransformer: (value) {
                                              if (value == null) {
                                                return null;
                                              } else {
                                                return DateFormat(
                                                        'yyyy-MM-dd HH:mm')
                                                    .format(value);
                                              }
                                            },
                                            initialEntryMode:
                                                DatePickerEntryMode.calendar,
                                            // initialValue: DateTime.now(),
                                            inputType: InputType.both,

                                            onChanged: (value) {
                                              if (value == null) {
                                                return;
                                              }
                                              // value?.toIso8601String();
                                              String string =
                                                  dateFormat.format(value);
                                            },
                                            // controller: string,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              suffixIcon: IconButton(
                                                icon: const Icon(Icons.close),
                                                onPressed: () {
                                                  // print(_formKey
                                                  //     .currentState!.value);
                                                  // return DateTimeField.convert(await _showTimePicker(context, currentValue) ?? TimeOfDay.fromDateTime(currentValue));
                                                  _formKey.currentState!
                                                      .fields[e.name]
                                                      ?.didChange(null);
                                                },
                                              ),
                                            ),
                                            // initialTime: const TimeOfDay(hour: 8, minute: 0),
                                            // locale: const Locale.fromSubtags(languageCode: 'fr'),
                                          )
                                        : FormBuilderTextField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                            name: e.name!,
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
                            )),
                        if (widget.report.has_image == "true")
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
                          width: double.infinity,
                          height: 50,
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
                              payload["reportsId"] = (widget.report.id);
                              print(payload);
                              context
                                  .read<ReportsNotifier>()
                                  .createReport(payload: payload, image: image)
                                  .then((value) {
                                _formKey.currentState?.reset();
                                // Navigator.of(context).pop();
                                context.showCustomSnackBar(
                                    "Report Created successfully");

                                // Navigator.of(widget.cxn).pop();
                              });
                            },
                            child: context.watch<ReportsNotifier>().isBusy
                                ? const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircularProgressIndicator(
                                      color: white,
                                    ),
                                  )
                                : const Text(
                                    'Submit',
                                    style:
                                        TextStyle(color: white, fontSize: 30),
                                  ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })

        //  reportsData(widget: widget)

        );
  }
}

class reportsData extends StatelessWidget {
  const reportsData({
    super.key,
    required this.widget,
  });

  final MakeReport widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.height,
          child: Card(
            color: mainColor.withOpacity(.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total Reports",
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
                  "${context.watch<ReportsNotifier>().reportOccurence.where((element) => element.reportsId == widget.report.id).length}",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: white),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              ...context
                  .watch<ReportsNotifier>()
                  .reportOccurence
                  .where((element) => element.reportsId == widget.report.id)
                  .toList()
                  .map((e) => e.details == null
                      ? const SizedBox()
                      : Card(
                          color: mainColorCard,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (e.details != null)
                                    ...e.details!.keys.map((f) => f ==
                                            "villageId"
                                        ? const SizedBox()
                                        : f == "reportsId"
                                            ? const SizedBox()
                                            : Text(
                                                "  ${f.replaceAll("_", " ")}: ${e.details![f]}")),
                                ],
                              ),
                            ),
                          ),
                        ))
            ],
          ),
        ))
      ],
    );
  }
}
