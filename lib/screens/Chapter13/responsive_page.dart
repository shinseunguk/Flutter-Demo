import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({super.key});

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 13강\n(Flexible, Expanded 사용하여 반응형으로 만들기)",
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
        child: Column(
          children: [
            // Flexible(
            //   flex: 5,
            //   fit: FlexFit.tight,
            //   child: Container(height: 150, color: Colors.red),
            // ),
            // Flexible(
            //   flex: 2,
            //   fit: FlexFit.tight,
            //   child: Container(height: 150, color: Colors.green),
            // ),
            Expanded(flex: 5, child: Container(height: 150, color: Colors.red)),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(height: 150, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
