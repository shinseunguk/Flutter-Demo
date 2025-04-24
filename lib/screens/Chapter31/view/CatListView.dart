import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/screens/Chapter31/viewModel/CatViewModel.dart';
import 'package:get/get.dart';

class CatListView extends StatefulWidget {
  const CatListView({super.key});

  @override
  State<CatListView> createState() => _CatListViewState();
}

class _CatListViewState extends State<CatListView> {
  final CatViewModel _viewModel = Get.put(CatViewModel());

  @override
  void dispose() {
    _viewModel.removeAllCats();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 31강 (MVVM 패턴 적용)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _viewModel.fetchCats();
            },
            child: const Text("고양이 데이터 가져오기"),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                padding: EdgeInsets.all(15),
                itemCount: _viewModel.cats.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text("ID: ${_viewModel.cats[index].id.toString()}"),
                    ),
                    subtitle: Image.network(
                      _viewModel.cats[index].url.toString(),
                      errorBuilder: (context, error, stackTrace) {
                        return const Text('이미지를 불러올 수 없습니다.');
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
