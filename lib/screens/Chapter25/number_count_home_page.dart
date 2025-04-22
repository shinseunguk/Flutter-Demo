import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberCountHomePage extends ConsumerWidget {
  final counterProvider = StateNotifierProvider((ref) => Counter());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    ref.listen(counterProvider, (previous, next) {
      print("현재 상태: $previous, 다음 상태: $next");
    });

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 25강 (상태 관리 4 - Riverpod 사용)',
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
          children: [
            Text("Count: $count", style: const TextStyle(fontSize: 30)),
            TextButton(
              onPressed: () => ref.watch(counterProvider.notifier).increment(),
              child: const Text("증가하기"),
            ),
          ],
        ),
      ),
    );
  }
}

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;
  void decrement() => state--;
}
