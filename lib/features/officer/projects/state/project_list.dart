import 'package:cached_network_image/cached_network_image.dart';
import 'package:cais/features/officer/projects/projects.dart';
import 'package:cais/features/officer/projects/state/project_notifier.dart';
import 'package:cais/utils/colors.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({super.key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Project List",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ...context.watch<ProjectNotifier>().projects.map((e) => Card(
                color: mainColorCard,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text("Project Name: ${e.projectName}"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Start Date: ${e.startDate}"),
                        Text(" Proposed End Date: ${e.proposedDate}"),
                        Text(" Status: ${e.projectStatus}"),
                        InkWell(
                          onTap: () {
                            e.image == null
                                ? ""
                                : showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        padding: const EdgeInsets.all(20),
                                        child: Stack(
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .9,
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    "$SERVERImages${e.image}",
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
                                            Positioned(
                                                top: 10,
                                                right: 10,
                                                child: OutlinedButton(
                                                    style: ButtonStyle(
                                                      side: MaterialStateProperty
                                                          .all<BorderSide>(
                                                              const BorderSide(
                                                        color: Colors.red,
                                                      )),
                                                      shape: MaterialStateProperty
                                                          .all<OutlinedBorder>(
                                                              const CircleBorder()),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Icon(
                                                      Icons.close,
                                                      color: Colors.red,
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
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
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
    );
  }
}
