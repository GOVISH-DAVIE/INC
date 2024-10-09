import 'dart:io';

import 'package:cais/features/officer/dash/officer.dart';
import 'package:cais/providers/locator.dart';
import 'package:cais/providers/providers.dart';
import 'package:cais/services/background.service.dart';
import 'package:cais/services/permisions.service.dart';
import 'package:cais/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';

import 'core/data/datasources/local_storage_data_source.dart';
import 'features/officer/auth/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initiatePrermisions();
  setupLocator();
  await initializeService();

  runApp(MultiProvider(providers: providersChange, child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.'
  bool _notificationsEnabled = false;

  Future<void> _requestPermissions() async {
    if (Platform.isIOS || Platform.isMacOS) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              MacOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } else if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      final bool? grantedNotificationPermission =
          await androidImplementation?.requestNotificationsPermission();
      setState(() {
        _notificationsEnabled = grantedNotificationPermission ?? false;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _requestPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'INC',
      theme: themeData(),
      themeMode: ThemeMode.system,
      home: FutureBuilder(
          future: getData("auth"),
          builder: (context, snap) {
            if (snap.hasError) {
              return Text("${snap.error}");
            }
            if (!snap.hasData) {
              return const OfficerAuth();
            }
            if (snap.data == null || snap.data == "") {
              return const OfficerAuth();
            }
            return const OfficerDash();
            //
          }),
    );
  }
}
