import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 11강 (AlertDialog - 팝업창 띄우기)",
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
        child: Center(
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Dialog Title"),
                    content: SingleChildScrollView(
                      child: Container(child: const Text("Dialog Content")),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text("Yes"),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text("No"),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text("Button"),
          ),
        ),
      ),
    );
  }
}
