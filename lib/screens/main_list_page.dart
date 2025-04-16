import 'package:flutter/material.dart';
import 'hello_word_page.dart';
import 'placeholder_page.dart';
import 'column_row_table_page.dart';

class MainListPage extends StatelessWidget {
  final List<String> items = [
    '핵심 강좌 1강 (Hello World 출력 및 Scaffold 뼈대 구성)',
    '핵심 강좌 2강 (Column, Row 테이블 구성)',
    // 'Networking',
    // 'Database Integration',
    // 'Animations',
    // 'Testing',
    // 'Deployment',
    // 'Advanced Topics',
  ];

  final Map<String, Widget> screens = {
    '핵심 강좌 1강 (Hello World 출력 및 Scaffold 뼈대 구성)': HelloWorldPage(),
    '핵심 강좌 2강 (Column, Row 테이블 구성)': ColumnRowTablePage(),
    // 'Networking': PlaceholderPage(),
    // 'Database Integration': PlaceholderPage(),
    // 'Animations': PlaceholderPage(),
    // 'Testing': PlaceholderPage(),
    // 'Deployment': PlaceholderPage(),
    // 'Advanced Topics': PlaceholderPage(),
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
            title: Text(items[index]),
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
