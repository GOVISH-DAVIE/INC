import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/counties/data/models/county/county.dart';
import 'package:cais/features/admin/sub_counties/create_sub_county_form.dart';
import 'package:cais/features/admin/sub_counties/state_sub_counties.dart';
import 'package:cais/features/admin/sub_counties/sub_counties_ward.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountySubcounty extends StatefulWidget {
  final County county;
  const CountySubcounty({super.key, required this.county});

  @override
  State<CountySubcounty> createState() => _CountySubcountyState();
}

class _CountySubcountyState extends State<CountySubcounty> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SubCountiesNotifier>().getSubCounties();
    });
  }

  String searchValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: white,
        title: Text(
          "Sub Counties for ${widget.county.name!.toUpperCase()} ",
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
                          child: CreateSubCounty(
                            cxn: cxn,
                            county: widget.county,
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
                "Add New Sub County",
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
                      "Total Sub Counties",
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
                      "${context.watch<SubCountiesNotifier>().subCounties.where((element) => element.countyId == widget.county.id).length}",
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
                child: context.watch<SubCountiesNotifier>().isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : searchValue.isNotEmpty
                        ? ListView.builder(
                            itemCount: context
                                .watch<SubCountiesNotifier>()
                                .subCounties
                                .where((element) =>
                                    element.countyId == widget.county.id)
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
                                      "${context.watch<SubCountiesNotifier>().subCounties.where((element) => element.countyId == widget.county.id).where((element) => element.name!.toLowerCase().contains(searchValue)).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<SubCountiesNotifier>()
                                              .subCounties[index]
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
                                .watch<SubCountiesNotifier>()
                                .subCounties
                                .where((element) =>
                                    element.countyId == widget.county.id)
                                .length,
                            itemBuilder: (cxn, index) => Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text(
                                      "${context.watch<SubCountiesNotifier>().subCounties.where((element) => element.countyId == widget.county.id).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<SubCountiesNotifier>()
                                              .subCounties[index]
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
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                SizedBox(
                                                  width: 150,
                                                  child: OutlinedButton(
                                                    onPressed: () {
                                                      context.appNavigatorPush(SubcountyWard(
                                                          subcounty: context
                                                              .read<
                                                                  SubCountiesNotifier>()
                                                              .subCounties
                                                              .where((element) =>
                                                                  element
                                                                      .countyId ==
                                                                  widget.county
                                                                      .id)
                                                              .toList()[index]));
                                                    },
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          "Wards",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        Icon(
                                                            Icons.arrow_forward)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]))
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
