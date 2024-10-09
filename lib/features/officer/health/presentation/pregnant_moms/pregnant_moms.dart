import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/auth/login.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/features/officer/health/presentation/pregnant_moms/pregnant_moms_list.dart';
import 'package:cais/features/officer/health/state/health_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class PregnantMoms extends StatefulWidget {
  const PregnantMoms({super.key});

  @override
  State<PregnantMoms> createState() => _PregnantMomsState();
}

class _PregnantMomsState extends State<PregnantMoms> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pregnant Mom Registration"),
        actions: [
          IconButton(
              onPressed: () {
                context.appNavigatorPush(const PregnantMomsList());
              },
              icon: const Icon(Icons.list))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: FormBuilder(
          key: _formKey,
          child: FutureBuilder(
            future: getData('auth'),
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

              return ListView(
                children: [
                  const Text(
                    "Name",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: mainColor, fontSize: 17),
                  ),
                  FormBuilderTextField(
                    // keyboardType: TextInputType.,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    name: "name",
                    onChanged: (val) {
                      print(val); // Print the text value write into TextField
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Kids To Bore",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: mainColor, fontSize: 17),
                  ),
                  FormBuilderTextField(
                    // keyboardType: TextInputType.,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(
                          5), // Limit input to 5 characters
                    ],
                    name: "kids_to_bore",
                    onChanged: (val) {
                      print(val); // Print the text value write into TextField
                    },
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
                        debugPrint(_formKey.currentState?.value.toString());

                        // On another side, can access all field values without saving form with instantValues
                        _formKey.currentState?.validate();
                        var payload = Map.from(_formKey.currentState!.value);
                        payload["villageId"] = (user.villageId);
                        context
                            .read<HealthNotifier>()
                            .createPregnantMom(
                              payload: payload,
                            )
                            .then((value) {
                          _formKey.currentState?.reset();
                          Navigator.of(context).pop();
                          context.showCustomSnackBar(
                              "Pregnant Mom Reported successfully");

                          // Navigator.of(widget.cxn).pop();
                        }).catchError((onError) {
                          logger.wtf(onError);
                          context.showCustomSnackBar(
                              "[Pregnant Moms] An Error Occured",
                              isError: true);
                        });
                      },
                      child: context.watch<HealthNotifier>().isBusy
                          ? const CircularProgressIndicator(
                              color: white,
                            )
                          : const Text(
                              'Submit',
                              style: TextStyle(color: white, fontSize: 30),
                            ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
