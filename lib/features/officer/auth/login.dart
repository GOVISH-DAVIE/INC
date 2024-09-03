import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/features/officer/auth/state/auth.dart';
import 'package:cais/features/officer/dash/officer.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class OfficerAuth extends StatefulWidget {
  const OfficerAuth({super.key});

  @override
  State<OfficerAuth> createState() => _OfficerAuthState();
}

class _OfficerAuthState extends State<OfficerAuth> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Image.asset("assets/logo.png"),
                FormBuilder(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   "Officer Login",
                        //   style: Theme.of(context).textTheme.headlineMedium,
                        // ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        ...officerAuthEntries.map((e) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.replaceAll("_", " ").capitalizeFirstofEach,
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
                                  name: e,
                                  onChanged: (val) {
                                    print(
                                        val); // Print the text value write into TextField
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate and save the form values
                              _formKey.currentState?.saveAndValidate();
                              debugPrint(
                                  _formKey.currentState?.value.toString());

                              // On another side, can access all field values without saving form with instantValues
                              _formKey.currentState?.validate();
                              context
                                  .read<OfficerAuthNotifier>()
                                  .login(payload: _formKey.currentState!.value)
                                  .then((value) {
                                context.showCustomSnackBar("successfull");
                                context.appNavigatorPush(const OfficerDash());
                                // ignore: argument_type_not_assignable_to_error_handler
                              }).catchError(() {
                                context.showCustomSnackBar("Try again later",
                                    isError: true);
                              });
                            },
                            child: context.watch<OfficerAuthNotifier>().isBusy
                                ? const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircularProgressIndicator(
                                      color: white,
                                    ),
                                  )
                                : const Text(
                                    'Login',
                                    style: TextStyle(color: white),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
