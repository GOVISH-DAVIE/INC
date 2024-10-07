import 'package:cais/features/county_admin/messages/presentation/widgets/high.dart';
import 'package:cais/features/county_admin/messages/state/messages_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LowMessages extends StatefulWidget {
  const LowMessages({super.key});

  @override
  State<LowMessages> createState() => _MessagesDashboardState();
}

class _MessagesDashboardState extends State<LowMessages> {
  @override
  void initState() {
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
                      prority: "low",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type == "disaster" &&
                              element.urgency == "low")
                          .toList()),
                  HighList(
                      prority: "low",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type == "health" &&
                              element.urgency == "low")
                          .toList()),
                  HighList(
                      prority: "low",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type?.toLowerCase() == "security" &&
                              element.urgency == "low")
                          .toList()),
                  HighList(
                      prority: "low",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type?.toLowerCase() ==
                                  "projects & infrastructure" &&
                              element.urgency == "low")
                          .toList()),
                  HighList(
                      prority: "low",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type?.toLowerCase() == "political" &&
                              element.urgency == "low")
                          .toList()),
                  HighList(
                      prority: "low",
                      list: context
                          .watch<MessageNotifier>()
                          .messages
                          .where((element) =>
                              element.type?.toLowerCase() == "general" &&
                              element.urgency == "low")
                          .toList()),
                ],
              ),
            )));
  }
}
