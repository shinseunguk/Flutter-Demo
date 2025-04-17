import 'package:flutter/material.dart';

class ShowImageView extends StatefulWidget {
  const ShowImageView({super.key});

  @override
  State<ShowImageView> createState() => _ShowImageViewState();
}

class _ShowImageViewState extends State<ShowImageView> {
  String url =
      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=800&h=600&fit=crop&";
  // String url2 = "https://picsum.photos/id/237/800/600";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 12강 (이미지 보여주기)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image(image: NetworkImage(url), fit: BoxFit.contain),
      ),
    );
  }
}
