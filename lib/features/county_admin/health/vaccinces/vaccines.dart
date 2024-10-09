import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/county_admin/health/state/health_admin.dart';
import 'package:cais/features/county_admin/health/vaccinces/widget/add_vaccine.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VaccinesTypes extends StatefulWidget {
  const VaccinesTypes({super.key});

  @override
  State<VaccinesTypes> createState() => _VaccinesTypesState();
}

class _VaccinesTypesState extends State<VaccinesTypes> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HealthAdminNotifier>().getVaccineType();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vaccine Types"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const Dialog(
                backgroundColor: Colors.transparent,
                child: CreateVaccineType(),
              );
            },
          );
        },
        label: Text(
          "add vaccine type",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
      ),
      body: context.watch<HealthAdminNotifier>().isBusy
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                ...context
                    .watch<HealthAdminNotifier>()
                    .vaccinetype
                    .map((e) => ListTile(
                          title: Text("${e.name}".capitalizeFirstofEach),
                        ))
              ],
            ),
    );
  }
}
