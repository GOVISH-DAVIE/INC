import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/county_admin/health/state/health_admin.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class CreateVaccineType extends StatefulWidget {
  const CreateVaccineType({super.key});

  @override
  State<CreateVaccineType> createState() => _CreateVaccineState();
}

class _CreateVaccineState extends State<CreateVaccineType> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

          // color: Colors.white
        ),
        height: 400,
        width: MediaQuery.of(context).size.width * .9,
        child: FormBuilder(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Add Vaccine Type",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Divider(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Name ",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: mainColor, fontSize: 17),
                ),
                const SizedBox(
                  height: 20,
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
                      context
                          .read<HealthAdminNotifier>()
                          .createVaccineType(
                            payload: payload,
                          )
                          .then((value) {
                        _formKey.currentState?.reset();
                        Navigator.of(context).pop();
                        context
                            .showCustomSnackBar("Data Reported successfully");

                        // Navigator.of(widget.cxn).pop();
                      }).catchError((onError) {
                        logger.wtf(onError);
                        context.showCustomSnackBar(
                            "[Relief Receivership] An Error Occured",
                            isError: true);
                      });
                    },
                    child: context.watch<HealthAdminNotifier>().isBusy
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
            ),
          ),
        ),
      ),
    );
  }
}
