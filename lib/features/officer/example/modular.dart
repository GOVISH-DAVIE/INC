import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Modular extends StatefulWidget {
  final String title;
  final int length;
  const Modular({super.key, required this.title, required this.length});

  @override
  State<Modular> createState() => _ModularState();
}

class _ModularState extends State<Modular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
          child: ListView.builder(
            itemCount: widget.length,
            itemBuilder: (context, index) => Card(
              color: mainColorCard,
              child: ListTile(
                onTap: () {
                  // context.appNavigatorPush(MakeReport(report: e));
                },
                title: Text("Module ${index + 1}",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w400)),
                subtitle: Text("module ${index + 1} description"),
              ),
            ),
          )),
    );
  }
}
