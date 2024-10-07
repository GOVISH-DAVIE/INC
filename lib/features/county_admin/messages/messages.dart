import 'package:cais/features/county_admin/messages/high.dart';
import 'package:cais/features/county_admin/messages/medium.dart';
import 'package:cais/features/county_admin/messages/state/messages_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'low.dart';

class MessagesDashboard extends StatefulWidget {
  const MessagesDashboard({super.key});

  @override
  State<MessagesDashboard> createState() => _MessagesDashboardState();
}

class _MessagesDashboardState extends State<MessagesDashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MessageNotifier>().getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<MessageNotifier>().isBusy
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : DefaultTabController(
              length: 3,
              child: Scaffold(
                  appBar: AppBar(
                    actions: [
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text("Dashboard"),
                                Icon(Icons.arrow_forward)
                              ],
                            )),
                      )
                    ],
                    bottom: const TabBar(
                      tabs: [
                        Tab(child: Text("High")),
                        Tab(child: Text("Medium")),
                        Tab(child: Text("Low")),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      HighMessages(),
                      MediumMessages(),
                      LowMessages(),
                    ],
                  )),
            ),
    );
  }
}
