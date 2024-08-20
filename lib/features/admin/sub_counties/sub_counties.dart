import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/counties/county_subcounties.dart';
import 'package:cais/features/admin/counties/create_couties_form.dart';
import 'package:cais/features/admin/counties/state/counties_state.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SubCounties extends StatefulWidget {
  const SubCounties({super.key});

  @override
  State<SubCounties> createState() => _SubCountiesState();
}

class _SubCountiesState extends State<SubCounties> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CountiesNotifier>().getCounties();
    });
  }

  String searchValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: white,
        title: const Text("Select a County "),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
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
                child: context.watch<CountiesNotifier>().isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : searchValue.length > 0
                        ? ListView.builder(
                            itemCount: context
                                .watch<CountiesNotifier>()
                                .counties
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
                                      "${context.watch<CountiesNotifier>().counties.where((element) => element.name!.toLowerCase().contains(searchValue)).toList()[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<CountiesNotifier>()
                                              .counties[index]
                                              .code
                                              .toString() ??
                                          ''),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Divider(),
                                      ),
                                      Row(
                                        children: [
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
                                                          CountySubcounty(
                                                              county: context
                                                                      .read<
                                                                          CountiesNotifier>()
                                                                      .counties[
                                                                  index]));
                                                    },
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          "Sub Counties",
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
                                .watch<CountiesNotifier>()
                                .counties
                                .length,
                            itemBuilder: (cxn, index) => Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text(
                                      "${context.watch<CountiesNotifier>().counties[index].name}"),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(context
                                              .watch<CountiesNotifier>()
                                              .counties[index]
                                              .code
                                              .toString() ??
                                          ''),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Divider(),
                                      ),
                                      Row(
                                        children: [
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
                                                          CountySubcounty(
                                                              county: context
                                                                      .read<
                                                                          CountiesNotifier>()
                                                                      .counties[
                                                                  index]));
                                                    },
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          "Sub Counties",
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
