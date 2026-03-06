import 'package:fcm_tutorial/notification_service.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
@override
void initState() {
  super.initState();
  NotificationService().initFCM();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FCM'), centerTitle: true),
      body: Center(child: Icon(Icons.notifications, size: 120)),
    );
  }
}
