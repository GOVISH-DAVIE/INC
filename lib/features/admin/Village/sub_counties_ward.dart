import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/Village/create_villages.dart';
import 'package:cais/features/admin/counties/county_subcounties.dart';
import 'package:cais/features/admin/counties/create_couties_form.dart';
import 'package:cais/features/admin/counties/data/models/county/county.dart';
import 'package:cais/features/admin/counties/state/counties_state.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/features/admin/sub_counties/create_sub_county_form.dart';
import 'package:cais/features/admin/sub_counties/models/sub_county_model/sub_county_model.dart';
import 'package:cais/features/admin/sub_counties/state_sub_counties.dart';
import 'package:cais/features/admin/ward/create_ward_form.dart';
import 'package:cais/features/admin/ward/state_ward.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SubcountyWardVillage extends StatefulWidget {
  final SubCountyModel county;
  const SubcountyWardVillage({super.key, required this.county});

  @override
  State<SubcountyWardVillage> createState() => _CountySubcountyState();
}

class _CountySubcountyState extends State<SubcountyWardVillage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<WardNotifier>().getWards();
    });
  }

  String searchValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: white,
        title: Text(
          "Wards for ${widget.county.name!.toUpperCase()} ",
        ),
      ),
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
                      "${context.watch<WardNotifier>().ward.where((element) => element.subCountyId == widget.county.id).length}",
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
                child: context.watch<WardNotifier>().isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : searchValue.length > 0
                        ? ListView.builder(
                            itemCount: context
                                .watch<WardNotifier>()
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
                                      "${context.watch<WardNotifier>().ward.where((element) => element.subCountyId == widget.county.id).where((element) => element.name!.toLowerCase().contains(searchValue)).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<WardNotifier>()
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
                                              icon: Icon(Icons.edit)),
                                          IconButton(
                                              color: Colors.redAccent,
                                              onPressed: () {},
                                              icon: Icon(
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
                                                      context.appNavigatorPush(
                                                          VillageCreate(
                                                              county: context
                                                                  .read<
                                                                      WardNotifier>()
                                                                  .ward[index]));
                                                    },
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          "Villages",
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
                          )
                        : ListView.builder(
                            itemCount: context
                                .watch<WardNotifier>()
                                .ward
                                .where((element) =>
                                    element.subCountyId == widget.county.id)
                                .length,
                            itemBuilder: (cxn, index) => Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text(
                                      "${context.watch<WardNotifier>().ward.where((element) => element.subCountyId == widget.county.id).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<WardNotifier>()
                                              .ward[index]
                                              .description ??
                                          ''),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Divider(),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.edit)),
                                          IconButton(
                                              color: Colors.redAccent,
                                              onPressed: () {},
                                              icon: Icon(
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
                                                      context.appNavigatorPush(
                                                          VillageCreate(
                                                              county: context
                                                                  .read<
                                                                      WardNotifier>()
                                                                  .ward[index]));
                                                    },
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          "Villages",
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
