import 'package:flutter/material.dart';

class ColumnRowTablePage extends StatelessWidget {
  const ColumnRowTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 2강 (Column, Row 테이블 구성)',
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
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class ColumnRowTablePage extends StatefulWidget {
//   const ColumnRowTablePage({super.key});

//   @override
//   State<ColumnRowTablePage> createState() => _ColumnRowTablePageState();
// }

// class _ColumnRowTablePageState extends State<ColumnRowTablePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "핵심 강좌 2강\n(Column, Row 테이블 구성)",
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 17),
//         ), // 글자크기 조절
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           children: [Container(width: 200, height: 200, color: Colors.blue)],
//         ),
//       ),
//     );
//   }
// }
