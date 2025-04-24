import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter27/studentController.dart';
import 'package:get/get.dart';

class GetxObsPage extends StatelessWidget {
  // const GetxObsPage({super.key});

  final StudentController _con = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 27강\n(상태 관리 6 - GetX 사용 2: Reactive State Manager)',
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
        itemCount: _con.studentList.length,
        itemBuilder: (BuildContext con, int index) {
          return Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                GetX<StudentController>(
                  builder:
                      (_) => Text(
                        "ID: ${_con.studentList()[index]().studentId}, Name: ${_con.studentList()[index]().studentName}, Grade: ${_con.studentList()[index]().studentGrade}",
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => _con.updateStudentName(_con.newStudentNames[index], index),
                      child: const Text("이름 변경"),
                    ),
                    TextButton(
                      onPressed: () => _con.updateStudentGrade(_con.newStudentGrades[index], index),
                      child: const Text("성적 변경"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
