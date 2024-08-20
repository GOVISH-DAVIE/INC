import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/dashboard/list.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';

class AdminDash extends StatefulWidget {
  const AdminDash({super.key});

  @override
  State<AdminDash> createState() => _AdminDashState();
}

class _AdminDashState extends State<AdminDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: white,
        automaticallyImplyLeading: false,
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: adminDash.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var category = adminDash.elementAt(index);

              return categoryCard2(category);
            }),
      ),
    );
  }

  Widget categoryCard2(Map category) {
    return Card(
      color: const Color.fromARGB(255, 236, 236, 236),
      child: ListTile(
          // leading: FlutterLogo(size: 72.0),
          title: Text("${category['name']}"),
          subtitle: Text("${category["description"]}"),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          // isThreeLine: true,
          onTap: () {
            context.appNavigatorPush(category["to"]);
          }),
    );
  }
}
