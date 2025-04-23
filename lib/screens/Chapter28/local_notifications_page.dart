import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter28/notification.dart';

class LocalNotificationsPage extends StatefulWidget {
  const LocalNotificationsPage({super.key});

  @override
  State<LocalNotificationsPage> createState() => _LocalNotificationsPageState();
}

class _LocalNotificationsPageState extends State<LocalNotificationsPage> {
  @override
  void initState() {
    FlutterLocalNotification.init();
    Future.delayed(const Duration(seconds: 3), () {
      FlutterLocalNotification.requestNotificationPermissions();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 28강\n(푸시 알림 보내기 - Local Notifications)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: Center(
        child: TextButton(
          onPressed: () => FlutterLocalNotification.showNotification(),
          child: Text("알림 보내기"),
        ),
      ),
    );
  }
}
