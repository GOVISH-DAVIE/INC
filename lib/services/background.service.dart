import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/services/models/disaster_notification_model/disaster_notification_model.dart';
import 'package:cais/services/models/security_notifications_model/security_notifications_model.dart';
import 'package:cais/services/mqtt_config.dart';
import 'package:cais/services/permisions.service.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

void startBackgroundService() {
  final service = FlutterBackgroundService();
  service.startService();
}

void stopBackgroundService() {
  final service = FlutterBackgroundService();
  service.invoke("stop");
}

Future<void> initializeService() async {
  final service = FlutterBackgroundService();

  await service.configure(
    iosConfiguration: IosConfiguration(
      autoStart: true,
      onForeground: onStart,
      onBackground: onIosBackground,
    ),
    androidConfiguration: AndroidConfiguration(
      autoStart: true,
      onStart: onStart,
      isForegroundMode: false,
      notificationChannelId: 'my_foreground',
      initialNotificationTitle: 'Service Running',
      initialNotificationContent: 'Tap to return to the app',
      autoStartOnBoot: true,
      
    ),
  );
}

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  return true;
}

Future<void> connectMQTT() async {
  var clientID = clientId;
  final client = MqttServerClient(mqttUrl, clientID);
  Future<void> _onDisconnected() async {
    print('MQTT Client Disconnected');

    await client.connect();
  }

  void _onConnected() {
    print('MQTT Client Connected');
  }

  void _onSubscribed(String topic) {
    print('Subscribed to $topic');
  }

  client.port = 1883;
  client.keepAlivePeriod = 6000000000000000;
  client.onDisconnected = _onDisconnected;
  client.logging(on: true);
  client.onConnected = _onConnected;
  client.onSubscribed = _onSubscribed;

  final connMessage = MqttConnectMessage()
      .withClientIdentifier(clientID)
      .startClean()
      .withWillQos(MqttQos.atLeastOnce);
  client.connectionMessage = connMessage;

  try {
    await client.connect();
    client.subscribe('inc/disaster', MqttQos.atLeastOnce);
    client.subscribe('inc/security', MqttQos.atLeastOnce);
  } catch (e) {
    print('MQTT Connection Exception: $e');
    // client.disconnect();
  }

  client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) async {
    final MqttPublishMessage recMess = c![0].payload as MqttPublishMessage;
    final String pt =
        MqttPublishPayload.bytesToStringAsString(recMess.payload.message);

    print('Received message: $pt from topic: ${c[0].topic}>');
    print('Received message: $pt from topic: ${c[0].topic}>');
    String? userdata = await getData("auth");

    if (userdata != null) {
      AuthUserOfficerModel user =
          AuthUserOfficerModel.fromJson(jsonDecode(userdata));
      if (user.permmisions == "CountyAdmin") {
      if (c[0].topic == "inc/disaster") {
        DisasterNotificationModel disasterNotificationModel =
            DisasterNotificationModel.fromJson(jsonDecode(pt));

        final Response response = await intercepted_client.get(Uri.parse(
            "$SERVERImages${disasterNotificationModel.message?.image}"));
        final String base64Image = base64Encode(response.bodyBytes);
        BigPictureStyleInformation bigPictureStyleInformation =
            BigPictureStyleInformation(
          contentTitle:
              '${disasterNotificationModel.message?.disaster?.name} in ${disasterNotificationModel.message?.village?.name}',
          summaryText:
              "Homesteads Affected: ${disasterNotificationModel.message?.homesteads} \n Deaths: ${disasterNotificationModel.message?.deaths} \n ${disasterNotificationModel.message?.description}",
          ByteArrayAndroidBitmap.fromBase64String(
              base64Image), // Use image fetched from server
          largeIcon: ByteArrayAndroidBitmap.fromBase64String(
              base64Image), // Optional large icon (same image in this case)
        );

        AndroidNotificationDetails androidNotificationDetails =
            AndroidNotificationDetails('${disasterNotificationModel.title}',
                '${disasterNotificationModel.message?.disaster?.name} in ${disasterNotificationModel.message?.village?.name}',
                channelDescription:
                    '${disasterNotificationModel.message?.disaster?.name} in ${disasterNotificationModel.message?.village?.name}',
                importance: Importance.max,
                priority: Priority.high,
                playSound: true,
                styleInformation: bigPictureStyleInformation,
                ticker: 'ticker');
        NotificationDetails notificationDetails = NotificationDetails(
          android: androidNotificationDetails,
        );
        await flutterLocalNotificationsPlugin.show(
            id++,
            '${disasterNotificationModel.message?.disaster?.name} in ${disasterNotificationModel.message?.village?.name}',
            'Homesteads Affected: ${disasterNotificationModel.message?.homesteads} \n Deaths: ${disasterNotificationModel.message?.deaths}',
            notificationDetails,
            payload:
                'Homesteads Affected: ${disasterNotificationModel.message?.homesteads} \n Deaths: ${disasterNotificationModel.message?.deaths}');
      }
      if (c[0].topic == "inc/security") {
        SecurityNotificationsModel disasterNotificationModel =
            SecurityNotificationsModel.fromJson(jsonDecode(pt));

        final Response response = await intercepted_client.get(Uri.parse(
            "$SERVERImages${disasterNotificationModel.message?.image}"));
        final String base64Image = base64Encode(response.bodyBytes);
        BigPictureStyleInformation bigPictureStyleInformation =
            BigPictureStyleInformation(
          contentTitle:
              '${disasterNotificationModel.message?.report?.name} in ${disasterNotificationModel.message?.village?.name}',
          summaryText: " ')}",
          ByteArrayAndroidBitmap.fromBase64String(
              base64Image), // Use image fetched from server
          largeIcon: ByteArrayAndroidBitmap.fromBase64String(
              base64Image), // Optional large icon (same image in this case)
        );

        AndroidNotificationDetails androidNotificationDetails =
            AndroidNotificationDetails('${disasterNotificationModel.title}', "",
                channelDescription: "",
                importance: Importance.max,
                priority: Priority.high,
                playSound: true,
                styleInformation: bigPictureStyleInformation,
                ticker: 'ticker');
        NotificationDetails notificationDetails = NotificationDetails(
          android: androidNotificationDetails,
        );
        await flutterLocalNotificationsPlugin.show(
            id++,
            '${disasterNotificationModel.message?.report?.name} in ${disasterNotificationModel.message?.village?.name}',
            "  ",
            notificationDetails,
            payload: "");
      }
      }
    }
  });
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  connectMQTT();

  service.on("stop").listen((event) {
    service.stopSelf();
    print("background process is now stopped");
  });

  service.on("start").listen((event) {
    connectMQTT();
  });
  Timer.periodic(const Duration(seconds: 1), (timer) {
    // client.emit("event-name", "your-message");
    print("service is successfully running ${DateTime.now().second} ");
    // client.
  });
}
