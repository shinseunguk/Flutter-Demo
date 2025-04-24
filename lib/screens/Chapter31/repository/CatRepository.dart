import 'package:flutter_demo/screens/Chapter31/dataSource/CatDataSource.dart';
import 'package:flutter_demo/screens/Chapter31/model/Cat.dart';

class CatRepository {
  final Catdatasource _catdatasource = Catdatasource();

  Future<List<Cat>> fetchCats() async {
    return await _catdatasource.fetchCats();
  }
}
