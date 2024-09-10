import 'package:cached_network_image/cached_network_image.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/features/officer/reports/state/reports_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:provider/provider.dart';

class SecurityList extends StatefulWidget {
  final ReportsCategoryModel report;
  const SecurityList({super.key, required this.report});

  @override
  State<SecurityList> createState() => _SecurityListState();
}

class _SecurityListState extends State<SecurityList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Reports"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
                      "Total Reports",
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
                      "${context.watch<ReportsNotifier>().reportOccurence.where((element) => element.reportsId == widget.report.id).length}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  ...context
                      .watch<ReportsNotifier>()
                      .reportOccurence
                      .where((element) => element.reportsId == widget.report.id)
                      .toList()
                      .map((e) => e.details == null
                          ? const SizedBox()
                          : Card(
                              color: mainColorCard,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (e.details != null)
                                        ...e.details!.keys.map((f) => f ==
                                                "villageId"
                                            ? const SizedBox()
                                            : f == "reportsId"
                                                ? const SizedBox()
                                                : Text.rich(TextSpan(children: [
                                                    TextSpan(
                                                        text: f
                                                            .replaceAll(
                                                                "_", " ")
                                                            .toString()
                                                            .capitalize(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelMedium),
                                                    TextSpan(
                                                        text: ":\t \t" +
                                                            e.details![f]),
                                                  ])))

                                      // Text(
                                      //     "  ${f.replaceAll("_", " ")}: ${e.details![f]}")),

                                      ,
                                      if (e.image != null)
                                        InkWell(
                                          onTap: () {
                                            e.image == null
                                                ? ""
                                                : showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20),
                                                        child: Stack(
                                                          children: [
                                                            SizedBox(
                                                              width: double
                                                                  .infinity,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  .9,
                                                              child:
                                                                  CachedNetworkImage(
                                                                imageUrl:
                                                                    "$SERVERImages${e.image}",
                                                                height: 100,
                                                                placeholder: (context,
                                                                        url) =>
                                                                    const Center(
                                                                        child:
                                                                            CircularProgressIndicator()),
                                                                errorWidget: (context,
                                                                        url,
                                                                        error) =>
                                                                    const Icon(Icons
                                                                        .error),
                                                              ),
                                                            ),
                                                            Positioned(
                                                                top: 10,
                                                                right: 10,
                                                                child:
                                                                    OutlinedButton(
                                                                        style:
                                                                            ButtonStyle(
                                                                          side:
                                                                              MaterialStateProperty.all<BorderSide>(const BorderSide(
                                                                            color:
                                                                                Colors.red,
                                                                          )),
                                                                          shape:
                                                                              MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.of(context)
                                                                              .pop();
                                                                        },
                                                                        child:
                                                                            const Icon(
                                                                          Icons
                                                                              .close,
                                                                          color:
                                                                              Colors.red,
                                                                        )))
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                          },
                                          child: CachedNetworkImage(
                                            imageUrl: "$SERVERImages${e.image}",
                                            height: 100,
                                            placeholder: (context, url) =>
                                                const Center(
                                                    child:
                                                        CircularProgressIndicator()),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
