import 'package:get/get.dart';

class CountController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    update(); // 상태 업데이트
  }

  void decrement() {
    _counter--;
    update(); // 상태 업데이트
  }

  void reset() {
    _counter = 0;
    update(); // 상태 업데이트
  }
}
