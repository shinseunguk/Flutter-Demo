import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter23/model/album_two.dart';
import 'package:flutter_demo/screens/Chapter23/provider/album_provider_two.dart';
import 'package:provider/provider.dart';

class AlbumViewTwo extends StatefulWidget {
  const AlbumViewTwo({super.key});

  @override
  State<AlbumViewTwo> createState() => _AlbumViewTwoState();
}

class _AlbumViewTwoState extends State<AlbumViewTwo> {
  late List<AlbumTwo> albumList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 23강 (상태 관리 2 - Provider 패턴)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: Consumer<AlbumProviderTwo>(
        builder: (context, provider, child) {
          albumList = provider.getAlbumList();
          return ListView.builder(
            itemCount: albumList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(15.0),
                child: Text("${albumList[index].id}: ${albumList[index].title}"),
              );
            },
          );
        },
      ),
    );
  }
}
