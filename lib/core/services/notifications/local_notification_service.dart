// ignore_for_file: depend_on_referenced_packages
import 'dart:developer';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class LocalNotificationService {

  final BehaviorSubject<String?> onNotificationClick = BehaviorSubject();

  //create plugin
  final FlutterLocalNotificationsPlugin _notificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<NotificationAppLaunchDetails?> getDetails() async {
    return await _notificationsPlugin.getNotificationAppLaunchDetails();
  }

  //initialize
  Future<void> initialize() async {
    tz.initializeTimeZones();
    const IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: AndroidInitializationSettings("@drawable/logo"),
            iOS: initializationSettingsIOS,
        );

    _notificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: _onSelectNotification,
    );
  }

  //notification details
  Future<NotificationDetails> _notificationDetails() async => const NotificationDetails(
    android: AndroidNotificationDetails(
      "Zero Numbers",
      "Zero Numbers channel",
      playSound: true,
      fullScreenIntent: false,
      visibility: NotificationVisibility.public,
      importance: Importance.max,
      priority: Priority.max,
      autoCancel: true,
    ),
    iOS: IOSNotificationDetails(threadIdentifier: 'Zero Numbers'),
  );


  static void _onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) {
    log("id $id");
  }

  void _onSelectNotification(String? payloadString) async {
    log('tapped from foreground or background payload: ${(payloadString ?? 'no payload')}');
    if (payloadString != null) {
      if (payloadString.isNotEmpty) {
        onNotificationClick.add(payloadString);
    }
    }
  }

  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
  }) async {
    final details = await _notificationDetails();
    await _notificationsPlugin.show(id, title, body, details);
  }

  Future<void> showScheduledNotification(
      {required int id,
      required String title,
      required String payload,
      required String body,
      required int seconds}) async {
    final details = await _notificationDetails();
    await _notificationsPlugin.zonedSchedule(id, title, body,
      tz.TZDateTime.from(
        DateTime.now().add(Duration(seconds: seconds)),
        tz.local,
      ),
      details,
      payload: payload,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  Future<void> showNotificationWithPayload(
      {required int id,
      required String title,
      required String body,
      required String payload}) async {
    final details = await _notificationDetails();
    await _notificationsPlugin.show(id, title, body, details,payload: payload);
  }

  void onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) {
  }

  void onSelectNotification(String? payload) {
    if (payload != null && payload.isNotEmpty) {
      onNotificationClick.add(payload);
    }
  }
}
