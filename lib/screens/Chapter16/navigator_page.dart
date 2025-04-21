import 'package:flutter/material.dart';
import '../placeholder_page.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 16강\n(다른 화면으로 이동(페이지 이동 - Navigator 사용))",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변 경
      ),
      body: Center(
        child: GestureDetector(
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => PlaceholderPage()),
              ),
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue,
            child: const Text("Get Started"),
          ),
        ),
      ),
    );
  }
}
