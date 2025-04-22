import 'package:flutter_demo/screens/Chapter22/model/albums.dart';
import 'package:flutter_demo/screens/Chapter22/repository/album_repository.dart';
import 'package:rxdart/rxdart.dart';

class AlbumBloc {
  final AlbumRepository _albumRepository = AlbumRepository();
  final PublishSubject<Albums> _albumFetcher = PublishSubject<Albums>();

  Stream<Albums> get allAlbums => _albumFetcher.stream;

  Future<void> fetchAllAlbums() async {
    Albums albums = await _albumRepository.fetchAllAlbums();
    _albumFetcher.sink.add(albums);
  }

  dispose() {
    _albumFetcher.close();
  }
}
