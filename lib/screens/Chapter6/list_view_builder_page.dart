import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  final postList = [
    {"title": "Sample Title 1", "colorData": Colors.red},
    {"title": "Sample Title 2", "colorData": Colors.orange},
    {"title": "Sample Title 3", "colorData": Colors.yellow},
    {"title": "Sample Title 4", "colorData": Colors.green},
    {"title": "Sample Title 5", "colorData": Colors.blue},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 6강 (ListView 효율적으로 사용하기)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            title: postList[index]['title'] as String,
            colorData: postList[index]['colorData'] as Color,
          );
        },
      ),
    );
  }

  Widget postContainer({String title = '', Color colorData = Colors.blue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: colorData,
        ),
      ],
    );
  }
}
