import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/features/admin/schools_cartegories/models/school_cartegories_model/school_cartegories_model.dart';
import 'package:cais/features/admin/ward/state_ward.dart';
import 'package:cais/features/officer/education/state/education_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

class CreateSchool extends StatefulWidget {
  final BuildContext cxn;
  final int wardId;
  const CreateSchool({super.key, required this.cxn, required this.wardId});

  @override
  State<CreateSchool> createState() => _CreateCountiesState();
}

class _CreateCountiesState extends State<CreateSchool> {
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
              "Create New School",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            ...newSchoolEntries.map((e) => Column(
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
                    Text(
                      "Type of school".capitalizeFirstofEach,
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: mainColor, fontSize: 17),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FormBuilderDropdown<SchoolCartegoriesModel>(
                      name: 'schoolCategoriesId',
                      initialValue: context
                          .read<EducationNotifier>()
                          .schoolsCategories
                          .first,
                      decoration: const InputDecoration(
                        hintText: 'Type of school',
                      ),
                      items: context
                          .read<EducationNotifier>()
                          .schoolsCategories
                          .map((category) => DropdownMenuItem(
                                alignment: AlignmentDirectional.center,
                                value: category,
                                child: Text(category.name!),
                              ))
                          .toList(),
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
                payload["wardId"] = (widget.wardId);
                payload["schoolCategoriesId"] =
                    (payload["schoolCategoriesId"] as SchoolCartegoriesModel)
                        .id;
                print(payload);
                context
                    .read<EducationNotifier>()
                    .createSchool(payload: payload)
                    .then((value) {
                  context
                      .showCustomSnackBar("School Data Updated Successfully");

                  Navigator.of(widget.cxn).pop();
                });
              },
              child: context.watch<WardNotifier>().isBusy
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
