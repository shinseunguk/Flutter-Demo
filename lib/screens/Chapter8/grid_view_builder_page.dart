import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatefulWidget {
  const GridViewBuilderPage({super.key});

  @override
  State<GridViewBuilderPage> createState() => _GridViewBuilderPageState();
}

class _GridViewBuilderPageState extends State<GridViewBuilderPage> {
  final postList = [
    {"number": "1", "color": Colors.blue},
    {"number": "2", "color": Colors.green},
    {"number": "3", "color": Colors.yellow},
    {"number": "4", "color": Colors.orange},
    {"number": "5", "color": Colors.purple},
    {"number": "6", "color": Colors.pink},
    {"number": "7", "color": Colors.teal},
    {"number": "8", "color": Colors.brown},
    {"number": "9", "color": Colors.cyan},
    {"number": "10", "color": Colors.lime},
    {"number": "11", "color": Colors.indigo},
    {"number": "12", "color": Colors.red},
    {"number": "13", "color": Colors.lightBlue},
    {"number": "14", "color": Colors.lightGreen},
    {"number": "15", "color": Colors.deepOrange},
    {"number": "16", "color": Colors.deepPurple},
    {"number": "17", "color": Colors.amber},
    {"number": "18", "color": Colors.grey},
    {"number": "19", "color": Colors.blueGrey},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 8강 (GridView 효율적으로 사용하기)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        itemCount: postList.length,
        itemBuilder:
            (BuildContext context, int index) => postContainer(
              number: postList[index]["number"] as String,
              colorData: postList[index]["color"] as Color,
            ),
      ),
    );
  }

  Widget postContainer({String number = "0", Color colorData = Colors.amber}) =>
      Container(
        height: 200,
        color: colorData,
        child: Center(child: Text("box $number")),
      );
}
