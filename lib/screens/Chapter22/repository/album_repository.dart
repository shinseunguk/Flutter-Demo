// data_provider(api_provider.dart)에서 api 호출을 통해 데이터를 가공하고 저장하는 부분
import 'package:flutter_demo/screens/Chapter22/data_provider/api_provider.dart';
import 'package:flutter_demo/screens/Chapter22/model/albums.dart';

class AlbumRepository {
  final AlbumApiProvider _albumApiProvider = AlbumApiProvider();

  Future<Albums> fetchAllAlbums() async => _albumApiProvider.fetchAlbumList();
}
