import 'package:flutter/material.dart';

class GradationPage extends StatefulWidget {
  const GradationPage({super.key});

  @override
  State<GradationPage> createState() => _GradationPageState();
}

class _GradationPageState extends State<GradationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 14강 (그라데이션 적용하기)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.amber[100] as Color,
              Colors.amber[300] as Color,
              Colors.amber[500] as Color,
            ],
            stops: const [0.1, 0.5, 1.0],
            radius: 0.5,
          ),
        ),
      ),
    );
  }
}
