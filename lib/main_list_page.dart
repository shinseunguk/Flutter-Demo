import 'package:flutter/material.dart';
import 'screens/placeholder_page.dart';
import 'screens/Chapter1/hello_word_page.dart';
import 'screens/Chapter2/column_row_table_page.dart';
import 'screens/Chapter3/stack_page.dart';
import 'screens/Chapter4/gesture_detector_page.dart';
import 'screens/Chapter5/list_view_page.dart';
import 'screens/Chapter6/list_view_builder_page.dart';
import 'screens/Chapter7/grid_view_page.dart';

class MainListPage extends StatelessWidget {
  final List<String> items = [
    '핵심 강좌 1강 (Hello World 출력 및 Scaffold 뼈대 구성)',
    '핵심 강좌 2강 (Column, Row 테이블 구성)',
    '핵심 강좌 3강 (Stack 사용하여 여러 위젯 중첩하기)',
    '핵심 강좌 4강 (GestureDetector로 터치 이벤트 처리하기)',
    '핵심 강좌 5강 (ListView 사용하여 피드 만들기)',
    '핵심 강좌 6강 (ListView 효율적으로 사용하기)',
    '핵심 강좌 7강 (GridView 사용하기)',
  ];

  final Map<String, Widget> screens = {
    '핵심 강좌 1강 (Hello World 출력 및 Scaffold 뼈대 구성)': HelloWorldPage(),
    '핵심 강좌 2강 (Column, Row 테이블 구성)': ColumnRowTablePage(),
    '핵심 강좌 3강 (Stack 사용하여 여러 위젯 중첩하기)': StackPage(),
    '핵심 강좌 4강 (GestureDetector로 터치 이벤트 처리하기)': GestureDetectorPage(),
    '핵심 강좌 5강 (ListView 사용하여 피드 만들기)': ListViewPage(),
    '핵심 강좌 6강 (ListView 효율적으로 사용하기)': ListViewBuilderPage(),
    '핵심 강좌 7강 (GridView 사용하기)': GridViewPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '플러터(Flutter) 앱 개발',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            trailing: Icon(Icons.arrow_forward), // 리스트 끝에 아이콘 추가
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => screens[items[index]] ?? PlaceholderPage(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
