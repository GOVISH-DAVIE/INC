import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/counties/data/models/county/county.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/features/admin/sub_counties/state_sub_counties.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class CreateSubCounty extends StatefulWidget {
  final BuildContext cxn;
  final County county;
  const CreateSubCounty({super.key, required this.cxn, required this.county});

  @override
  State<CreateSubCounty> createState() => _CreateCountiesState();
}

class _CreateCountiesState extends State<CreateSubCounty> {
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
              "Create New Sub County for ${widget.county.name}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            ...subCountiesEntries.map((e) => Column(
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
                var payload = Map.from(_formKey.currentState!.value);
                payload["countyId"] = (widget.county.id!);
                print(payload);
                context
                    .read<SubCountiesNotifier>()
                    .createSubCounties(payload: payload)
                    .then((value) {
                  Navigator.of(widget.cxn).pop();
                });
                context.showCustomSnackBar("Sub County Created successfully");
              },
              child: context.watch<SubCountiesNotifier>().isBusy
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
