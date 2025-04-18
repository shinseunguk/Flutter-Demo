import 'package:flutter/material.dart';

// 아래는 각 화면의 예제입니다. 실제로는 각 화면을 구현해야 합니다.
class HelloWorldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 1강\n(Hello World 출력 및 Scaffold 뼈대 구성)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const DrawerHeader(
      //         decoration: BoxDecoration(color: Colors.blue),
      //         child: Text(
      //           '플러터(Flutter) 앱 개발',
      //           style: TextStyle(color: Colors.white, fontSize: 24),
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('핵심 강좌 1강'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       // 다른 항목 추가 가능
      //     ],
      //   ),
      // ),
      body: const Center(child: Text('Hello, World!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("onPressed"),
        child: const Icon(Icons.mouse),
      ),
    );
  }
}
