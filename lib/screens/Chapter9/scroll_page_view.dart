import 'package:flutter/material.dart';

class ScrollPageView extends StatefulWidget {
  const ScrollPageView({super.key});

  @override
  State<ScrollPageView> createState() => _ScrollPageViewState();
}

class _ScrollPageViewState extends State<ScrollPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 9강 (스크롤 기능 구현)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.red,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.green,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
