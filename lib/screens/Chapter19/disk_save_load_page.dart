import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DiskSaveLoadPage extends StatefulWidget {
  const DiskSaveLoadPage({super.key});

  @override
  State<DiskSaveLoadPage> createState() => _DiskSaveLoadPageState();
}

class _DiskSaveLoadPageState extends State<DiskSaveLoadPage> {
  late SharedPreferences _prefs;
  String _username = "";
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getUsername();
  }

  _saveUsername() {
    setState(() {
      _username = _usernameController.text;
      _prefs.setString("currentUsername", _username);
    });
  }

  _getUsername() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = _prefs.getString("currentUsername") ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 19강\n(디스크에 간단한 데이터 저장 및 불러오기 - SharedPreferences 사용)",
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
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15), child: Text("현재 사용자 이름: $_username")),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: _usernameController,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Input your username",
                ),
              ),
            ),
            TextButton(onPressed: () => _saveUsername(), child: const Text("저장")),
          ],
        ),
      ),
    );
  }
}
