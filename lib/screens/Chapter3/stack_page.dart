import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 3강 (Column, Row 테이블 구성)',
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
        color: Colors.brown,
        child: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.red),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 50, left: 50),
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 100, left: 100),
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 150, left: 150),
              color: Colors.purple,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 200, left: 200),
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
