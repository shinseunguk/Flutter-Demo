import 'package:flutter_demo/screens/Chapter31/model/Cat.dart';
import 'package:flutter_demo/screens/Chapter31/repository/CatRepository.dart';
import 'package:get/get.dart';

class CatViewModel {
  late final CatRepository _catrepository;
  var cats = <Cat>[].obs;

  // 생성자에서 CatRepository 초기화
  // CatRepository는 서버와 통신하는 역할을 담당
  CatViewModel() {
    _catrepository = CatRepository();
  }

  // 서버에서 가져온 데이터를 cats 리스트에 추가
  Future<void> fetchCats() async {
    cats.addAll(await _catrepository.fetchCats());
  }

  // cats 리스트에서 모든 데이터 제거
  Future<void> removeAllCats() async {
    cats.clear();
  }
}
