import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter23/model/album_two.dart';
import 'package:http/http.dart' as http;

class AlbumProviderTwo with ChangeNotifier {
  final List<AlbumTwo> _albumList = List.empty(growable: true); // growable => 사이즈를 증가 시킬 수 있음.

  List<AlbumTwo> getAlbumList() {
    _fetchAlbums();
    return _albumList;
  }

  void _fetchAlbums() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    final List<AlbumTwo> result =
        jsonDecode(response.body).map<AlbumTwo>((json) => AlbumTwo.fromJson(json)).toList();
    _albumList.clear();
    _albumList.addAll(result);
    notifyListeners(); // 데이터가 변경되었음을 알림
  }
}
