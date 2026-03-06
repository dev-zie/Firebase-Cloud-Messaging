import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initFCM() async {
    await _firebaseMessaging.requestPermission();
    final fcmToken = await _firebaseMessaging.getToken();
    print('FCM Token: $fcmToken');

    FirebaseMessaging.onBackgroundMessage((message) async {
      FirebaseMessaging.onMessage.listen((event) {
        
      },);
      print('Message: ${message.notification?.title}');
    });

FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Foreground Notification geldi!");
      print("Title: ${message.notification?.title}");
      print("Body: ${message.notification?.body}");
    });
  }
}
