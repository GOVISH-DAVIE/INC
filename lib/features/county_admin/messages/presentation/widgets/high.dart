import 'package:cais/features/county_admin/messages/models/messages_model/messages_model.dart';
import 'package:flutter/material.dart';

class HighList extends StatefulWidget {
  final List<MessagesModel> list;
  final String prority;
  const HighList({super.key, required this.list, required this.prority});

  @override
  State<HighList> createState() => _HighListState();
}

class _HighListState extends State<HighList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Text("${widget.list.length}"),
        ...widget.list.map((e) => Card(
              color: widget.prority == "high"
                  ? const Color.fromARGB(255, 250, 146, 146)
                  : widget.prority == "medium"
                      ? const Color.fromARGB(255, 205, 204, 204)
                      : Colors.white,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: ListTile(
                  title: Text("${e.message?.message}"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Context",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Text("${e.context}"),
                      const Divider(),
                      Text(
                        "Summary",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Text("${e.summary}"),
                      const Divider(),
                      Text(
                        "Key Points",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      ...e.keyPoints!.map((e) => Text("\t- $e")),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
