import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 7강 (GridView 사용하기)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: GridView(
        // scrollDirection: Axis.horizontal, // 가로 스크롤
        scrollDirection: Axis.vertical, // 세로 스크롤(기본값)
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        children: [
          postContainer(number: "1", colorData: Colors.red),
          postContainer(number: "2", colorData: Colors.orange),
          postContainer(number: "3", colorData: Colors.yellow),
          postContainer(number: "4", colorData: Colors.green),
          postContainer(number: "5", colorData: Colors.red),
          postContainer(number: "6", colorData: Colors.orange),
          postContainer(number: "7", colorData: Colors.yellow),
          postContainer(number: "8", colorData: Colors.green),
          postContainer(number: "9", colorData: Colors.red),
          postContainer(number: "10", colorData: Colors.orange),
          postContainer(number: "11", colorData: Colors.yellow),
          postContainer(number: "12", colorData: Colors.green),
        ],
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
