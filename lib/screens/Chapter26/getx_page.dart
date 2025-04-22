import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter26/countController.dart';
import 'package:get/get.dart';

class GetXPage extends StatelessWidget {
  const GetXPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 26강 (상태 관리 5 - GetX 사용)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              init: CountController(),
              builder:
                  (_) => Text(
                    "Current Count: ${Get.find<CountController>().counter}",
                    style: const TextStyle(fontSize: 30),
                  ),
            ),
            TextButton(
              onPressed: () => Get.find<CountController>().increment(),
              child: const Text("증가하기"),
            ),
            TextButton(
              onPressed: () => Get.find<CountController>().decrement(),
              child: const Text("감소하기"),
            ),
            TextButton(
              onPressed: () => Get.find<CountController>().reset(),
              child: const Text("초기화하기"),
            ),
          ],
        ),
      ),
    );
  }
}
