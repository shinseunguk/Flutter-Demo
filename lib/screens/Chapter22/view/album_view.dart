import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter22/bloc/album_bloc.dart';
import 'package:flutter_demo/screens/Chapter22/model/albums.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  final AlbumBloc _albumBloc = AlbumBloc();

  @override
  void initState() {
    super.initState();
    _albumBloc.fetchAllAlbums(); // 화면이 로드될 때 데이터 가져오기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 22강 (상태 관리 1 - BLoC 패턴)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: StreamBuilder<Albums>(
        stream: _albumBloc.allAlbums,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Albums? albumList = snapshot.data;
            return ListView.builder(
              itemCount: albumList?.albums.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ID: ${albumList?.albums[index].id.toString()}"),
                      Text("title: ${albumList?.albums[index].title}"),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}', style: const TextStyle(color: Colors.red)),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
