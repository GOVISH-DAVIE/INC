import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/dashboard/dash.dart';
import 'package:cais/features/officer/auth/login.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                context.appNavigatorPush(const AdminDash());
              },
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Card(
                  color: mainColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Admin",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                context.appNavigatorPush(const OfficerAuth());
              },
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Card(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Officer",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
