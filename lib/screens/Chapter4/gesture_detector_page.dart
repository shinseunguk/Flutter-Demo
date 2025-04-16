import 'package:flutter/material.dart';

class GestureDetectorPage extends StatelessWidget {
  const GestureDetectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 4강\n(GestureDetector로 터치 이벤트 처리하기)',
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
        // child: TextButton(
        //   onPressed: () => print("TextButton clicked??"),
        //   child: const Text("Text Button"),
        // ),
        child: GestureDetector(
          onTap: () => print("GestureDetector used."),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: const Center(
              child: Text(
                "GestureDetector",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
