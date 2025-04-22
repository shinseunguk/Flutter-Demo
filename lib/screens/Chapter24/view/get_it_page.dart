import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter22/model/album.dart';
import 'package:flutter_demo/screens/Chapter24/locator/locator.dart';
import 'package:flutter_demo/screens/Chapter24/service/album_service.dart';

class GetItPage extends StatefulWidget {
  const GetItPage({super.key});

  @override
  State<GetItPage> createState() => _GetItPageState();
}

class _GetItPageState extends State<GetItPage> {
  final AlbumService _service = locator<AlbumService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 24강 (상태 관리 3 - get_it 사용하기)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: FutureBuilder(
        future: _service.fetchAlbums(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Album>? list = snapshot.data;
            return ListView.builder(
              itemCount: list?.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("${list?[index].id}: ${list?[index].title}"),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}', style: const TextStyle(color: Colors.red)),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
