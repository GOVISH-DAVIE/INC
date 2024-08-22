import 'package:cais/features/admin/Village/state/state_village.dart';
import 'package:cais/features/admin/ward/models/wards_model/wards_model.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_village_form.dart';

class VillageCreate extends StatefulWidget {
  final WardsModel county;
  const VillageCreate({super.key, required this.county});

  @override
  State<VillageCreate> createState() => _CountySubcountyState();
}

class _CountySubcountyState extends State<VillageCreate> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<VillageNotifier>().getWardsVillages();
    });
  }

  String searchValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: white,
        title: Text(
          "Villages For  for ${widget.county.name!.toUpperCase()} ",
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: mainColor,
          onPressed: () {
            // we display showModalBottomSheet
            showDialog<void>(
              // context and builder are
              // required properties in this widget
              context: context,
              builder: (BuildContext cxn) {
                // we set up a container inside which
                // we create center column and display text

                // Returning SizedBox instead of a Container
                return Dialog(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .6,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CreateVillageForm(
                            cxn: cxn,
                            ward: widget.county,
                          )),
                    ),
                  ),
                );
              },
            );
          },
          label: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.add,
                  color: white,
                ),
              ),
              Text(
                "Add New Village",
                style: TextStyle(color: white),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
                      "Total Wards",
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
                      "${context.watch<VillageNotifier>().ward.where((element) => element.wardId == widget.county.id).length}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchValue = value;
                  });
                },
                decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "search"),
              ),
            ),
            Expanded(
                child: context.watch<VillageNotifier>().isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : searchValue.isNotEmpty
                        ? ListView.builder(
                            itemCount: context
                                .watch<VillageNotifier>()
                                .ward
                                .where((element) => element.name!
                                    .toLowerCase()
                                    .contains(searchValue))
                                .length,
                            itemBuilder: (cxn, index) => Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text(
                                      "${context.watch<VillageNotifier>().ward.where((element) => element.wardId == widget.county.id).where((element) => element.name!.toLowerCase().contains(searchValue)).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<VillageNotifier>()
                                              .ward[index]
                                              .description ??
                                          ''),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Divider(),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.edit)),
                                          IconButton(
                                              color: Colors.redAccent,
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.redAccent,
                                              )),
                                          Expanded(
                                              child: Center(
                                            child: TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Sub Counties",
                                                style: TextStyle(color: white),
                                              ),
                                            ),
                                          ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemCount: context
                                .watch<VillageNotifier>()
                                .ward
                                .where((element) =>
                                    element.wardId == widget.county.id)
                                .length,
                            itemBuilder: (cxn, index) => Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text(
                                      "${context.watch<VillageNotifier>().ward.where((element) => element.wardId == widget.county.id).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<VillageNotifier>()
                                              .ward[index]
                                              .description ??
                                          ''),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Divider(),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.edit)),
                                          IconButton(
                                              color: Colors.redAccent,
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.redAccent,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ))
          ],
        ),
      ),
    );
  }
}
