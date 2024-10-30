import 'dart:convert';

import 'package:cais/choices.dart';
import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/app_common_extentions.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/admin/relief/relief_list.dart';
import 'package:cais/features/officer/admin/relief/state/relief_notifier.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'relief.dart';

class ReliefFormRecipients extends StatefulWidget {
  final String reliefType;
  final Map payload;
  const ReliefFormRecipients(
      {super.key, required this.reliefType, required this.payload});

  @override
  State<ReliefFormRecipients> createState() => _ReliefState();
}

class _ReliefState extends State<ReliefFormRecipients> {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    context.read<ReliefNotifier>().getstoreData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // foregroundColor: white,
          title: Text(
            "${widget.reliefType} Distribution  Recipients",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),

          actions: [
            IconButton(
                onPressed: () {
                  context.read<ReliefNotifier>().getDistributions();
                  context.appNavigatorPush(const ReliefList());
                },
                icon: const Icon(Icons.list))
          ],
        ),
        body: context.watch<ReliefNotifier>().isBusy
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
                child: FormBuilder(
                    key: _formKey,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        children: <Widget>[
                          ...List.generate(
                            int.parse(widget.payload["number_of_people_given"]),
                            (index) => Card(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Recipient Name ${index + 1}"
                                          .capitalizeFirstofEach,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: mainColor, fontSize: 17),
                                    ),
                                    FormBuilderTextField(
                                      keyboardType: TextInputType.text,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      name: "recipient_name_${index + 1}",
                                      onChanged: (val) {
                                        print(
                                            val); // Print the text value write into TextField
                                      },
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Recipient contact details ${index + 1}"
                                          .capitalizeFirstofEach,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: mainColor, fontSize: 17),
                                    ),
                                    FormBuilderTextField(
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      name:
                                          "recipient_contact_details_${index + 1}",
                                      onChanged: (val) {
                                        print(
                                            val); // Print the text value write into TextField
                                      },
                                    ),
                                  ],
                                ),
                              ),
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
                                payload["type_of_relief"] = (widget.reliefType);
                                // context
                                //     .appNavigatorPush(ReliefFormRecipients(
                                //   reliefType: widget.reliefType,
                                //   payload: payload,
                                // ));

                                print(payload);
                                context
                                    .read<ReliefNotifier>()
                                    .createRelief(
                                      payload: widget.payload,
                                      recipients: payload,
                                    )
                                    .then((value) {
                                  _formKey.currentState?.reset();
                                  // Navigator.of(context).pop();
                                  context.appNavigatorPush(const Relief());
                                  context.showCustomSnackBar(
                                      "Relief Distribution Reported successfully");

                                  // Navigator.of(widget.cxn).pop();
                                }).catchError((onError) {
                                  logger.wtf(onError);
                                  context.showCustomSnackBar(
                                      "[Relief Distribution] An Error Occured",
                                      isError: true);
                                });
                              },
                              child: context.watch<ReliefNotifier>().isBusy
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
                    )),
              ));
  }
}
