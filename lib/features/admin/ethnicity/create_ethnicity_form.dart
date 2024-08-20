import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/features/admin/ethnicity/state/ethnicity_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class CreateEthnicity extends StatefulWidget {
  final BuildContext cxn;
  const CreateEthnicity({super.key, required this.cxn});

  @override
  State<CreateEthnicity> createState() => _CreateCountiesState();
}

class _CreateCountiesState extends State<CreateEthnicity> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Create New Entnicity",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            ...ethnicityEntries.map((e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.capitalizeFirstofEach,
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: mainColor, fontSize: 17),
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
                        print(val); // Print the text value write into TextField
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
            ElevatedButton(
              onPressed: () {
                // Validate and save the form values
                _formKey.currentState?.saveAndValidate();
                debugPrint(_formKey.currentState?.value.toString());

                // On another side, can access all field values without saving form with instantValues
                _formKey.currentState?.validate();
                context
                    .read<EthnicityNotifier>()
                    .createEthnicity(payload: _formKey.currentState!.value)
                    .then((value) {
                  Navigator.of(widget.cxn).pop();
                });
                context.showCustomSnackBar("County Created successfully");
              },
              child: context.watch<EthnicityNotifier>().isBusy
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
    );
  }
}
