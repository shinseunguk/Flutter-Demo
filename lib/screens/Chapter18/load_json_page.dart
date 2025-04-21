import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoadJsonPage extends StatefulWidget {
  const LoadJsonPage({super.key});

  @override
  State<LoadJsonPage> createState() => _LoadJsonPageState();
}

class _LoadJsonPageState extends State<LoadJsonPage> {
  static Future loadJson() async {
    final String response = await rootBundle.loadString(
      'lib/screens/Chapter18/users.json',
    );
    final data = await json.decode(response);
    return data['users'];
  }

  Future userList = loadJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 17강 (JSON 데이터 불러오기 - Future 사용)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변 경
      ),
      body: Container(
        child: FutureBuilder(
          future: userList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "${snapshot.data[index]['id']}: ${snapshot.data[index]['username']}",
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: const Text("Error"));
            } else {
              return const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              );
            }
          },
        ),
      ),
    );
  }
}
