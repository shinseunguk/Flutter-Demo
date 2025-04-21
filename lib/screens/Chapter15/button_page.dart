import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 15강 (버튼 만들기)",
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
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // 버튼 배경색
                  foregroundColor: Colors.white, // 버튼 텍스트 색상
                  textStyle: const TextStyle(
                    fontSize: 18, // 버튼 텍스트 크기
                    fontWeight: FontWeight.bold, // 버튼 텍스트 두께
                  ),
                ),
                onPressed: () => print("ElevatedButton Pressed"),
                child: Text("ElevatedButton"),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => print("TextButton Pressed"),
                child: Text("TextButton"),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => print("OutlinedButton Pressed"),
                child: Text("OutlinedButton"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
