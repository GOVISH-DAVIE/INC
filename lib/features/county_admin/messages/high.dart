import 'package:cais/features/county_admin/messages/presentation/widgets/high.dart';
import 'package:cais/features/county_admin/messages/state/messages_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HighMessages extends StatefulWidget {
  const HighMessages({super.key});

  @override
  State<HighMessages> createState() => _MessagesDashboardState();
}

class _MessagesDashboardState extends State<HighMessages> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MessageNotifier>().getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 6,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                bottom: const TabBar(
                  tabs: [
                    Tab(child: Text("Disaster")),
                    Tab(child: Text("Health")),
                    Tab(child: Text("Security")),
                    Tab(child: Text("Projects")),
                    Tab(child: Text("Politics")),
                    Tab(child: Text("General")),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  HighList(
                      prority: "high",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type == "disaster" &&
                              element.urgency == "high")
                          .toList()),
                  HighList(
                      prority: "high",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type == "health" &&
                              element.urgency == "high")
                          .toList()),
                  HighList(
                      prority: "high",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type?.toLowerCase() == "security" &&
                              element.urgency == "high")
                          .toList()),
                  HighList(
                      prority: "high",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type?.toLowerCase() ==
                                  "projects & infrastructure" &&
                              element.urgency == "high")
                          .toList()),
                  HighList(
                      prority: "high",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type?.toLowerCase() == "political" &&
                              element.urgency == "high")
                          .toList()),
                  HighList(
                      prority: "high",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type?.toLowerCase() == "general" &&
                              element.urgency == "high")
                          .toList()),
                ],
              ),
            )));
  }
}
