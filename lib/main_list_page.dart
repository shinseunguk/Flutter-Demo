import 'package:flutter/material.dart';
import 'screens/placeholder_page.dart';
import 'screens/Chapter1/hello_word_page.dart';
import 'screens/Chapter2/column_row_table_page.dart';
import 'screens/Chapter3/stack_page.dart';
import 'screens/Chapter4/gesture_detector_page.dart';
import 'screens/Chapter5/list_view_page.dart';
import 'screens/Chapter6/list_view_builder_page.dart';
import 'screens/Chapter7/grid_view_page.dart';
import 'screens/Chapter8/grid_view_builder_page.dart';
import 'screens/Chapter9/scroll_page.dart';
import 'screens/Chapter10/align_page.dart';
import 'screens/Chapter11/alert_dialog_page.dart';
import 'screens/Chapter12/show_image_page.dart';
import 'screens/Chapter13/responsive_page.dart';
import 'screens/Chapter14/gradation_page.dart';

class MainListPage extends StatelessWidget {
  final List<String> items = [
    '핵심 강좌 1강 (Hello World 출력 및 Scaffold 뼈대 구성)',
    '핵심 강좌 2강 (Column, Row 테이블 구성)',
    '핵심 강좌 3강 (Stack 사용하여 여러 위젯 중첩하기)',
    '핵심 강좌 4강 (GestureDetector로 터치 이벤트 처리하기)',
    '핵심 강좌 5강 (ListView 사용하여 피드 만들기)',
    '핵심 강좌 6강 (ListView 효율적으로 사용하기)',
    '핵심 강좌 7강 (GridView 사용하기)',
    '핵심 강좌 8강 (GridView 효율적으로 사용하기)',
    '핵심 강좌 9강 (스크롤 기능 구현)',
    '핵심 강좌 10강 (Align - 정렬하기)',
    '핵심 강좌 11강 (AlertDialog - 팝업창 띄우기)',
    '핵심 강좌 12강 (이미지 보여주기)',
    '핵심 강좌 13강 (Flexible, Expanded 사용하여 반응형으로 만들기)',
    '핵심 강좌 14강 (그라데이션 적용하기)',
  ];

  final Map<String, Widget> screens = {
    '핵심 강좌 1강 (Hello World 출력 및 Scaffold 뼈대 구성)': HelloWorldPage(),
    '핵심 강좌 2강 (Column, Row 테이블 구성)': ColumnRowTablePage(),
    '핵심 강좌 3강 (Stack 사용하여 여러 위젯 중첩하기)': StackPage(),
    '핵심 강좌 4강 (GestureDetector로 터치 이벤트 처리하기)': GestureDetectorPage(),
    '핵심 강좌 5강 (ListView 사용하여 피드 만들기)': ListViewPage(),
    '핵심 강좌 6강 (ListView 효율적으로 사용하기)': ListViewBuilderPage(),
    '핵심 강좌 7강 (GridView 사용하기)': GridViewPage(),
    '핵심 강좌 8강 (GridView 효율적으로 사용하기)': GridViewBuilderPage(),
    '핵심 강좌 9강 (스크롤 기능 구현)': ScrollPage(),
    '핵심 강좌 10강 (Align - 정렬하기)': AlignPage(),
    '핵심 강좌 11강 (AlertDialog - 팝업창 띄우기)': AlertDialogPage(),
    '핵심 강좌 12강 (이미지 보여주기)': ShowImagePage(),
    '핵심 강좌 13강 (Flexible, Expanded 사용하여 반응형으로 만들기)': ResponsivePage(),
    '핵심 강좌 14강 (그라데이션 적용하기)': GradationPage(),
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
