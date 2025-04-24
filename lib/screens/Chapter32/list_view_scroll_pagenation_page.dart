import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListViewScrollPagenationPage extends StatefulWidget {
  const ListViewScrollPagenationPage({super.key});

  @override
  State<ListViewScrollPagenationPage> createState() => _ListViewScrollPagenationPageState();
}

class _ListViewScrollPagenationPageState extends State<ListViewScrollPagenationPage> {
  final _url = 'https://jsonplaceholder.typicode.com/albums';
  int _page = 1;
  final int _limit = 20;
  bool _hasNextPage = true;
  bool _isFirstLoadRunning = false;
  bool _isLoadMoreRunning = false;
  List _albumList = [];
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _initLoad();
    _controller = ScrollController()..addListener(_nextLoad);
  }

  void _initLoad() async {
    setState(() {
      _isFirstLoadRunning = true;
    });
    try {
      final res = await http.get(Uri.parse('$_url?_page=$_page&_limit=$_limit'));
      setState(() {
        _albumList = jsonDecode(res.body);
      });
    } catch (e) {
      print(e.toString());
    }

    setState(() {
      _isFirstLoadRunning = false;
    });
  }

  void _nextLoad() async {
    if (_hasNextPage &&
        !_isFirstLoadRunning &&
        !_isLoadMoreRunning &&
        _controller.position.extentAfter < 100) {
      setState(() {
        _isLoadMoreRunning = true;
      });
      _page++;
      try {
        final res = await http.get(Uri.parse('$_url?_page=$_page&_limit=$_limit'));
        final List fetchedData = jsonDecode(res.body);
        if (fetchedData.isNotEmpty) {
          setState(() {
            _albumList.addAll(fetchedData);
          });
        } else {
          setState(() {
            _hasNextPage = false;
          });
        }
      } catch (e) {
        print(e.toString());
      }
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_nextLoad);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 32강\n(ListView Scroll Pagination 구축)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body:
          _isFirstLoadRunning
              ? const Center(child: CircularProgressIndicator())
              : _albumList.isEmpty
              ? const Center(child: Text('데이터가 없습니다.'))
              : ListView.builder(
                controller: _controller,
                itemCount: _albumList.length + 1,
                itemBuilder: (context, index) {
                  if (index == _albumList.length) {
                    return _hasNextPage
                        ? const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: CircularProgressIndicator()),
                        )
                        : const SizedBox();
                  }
                  return ListTile(
                    title: Text(_albumList[index]['title']),
                    subtitle: Text('ID: ${_albumList[index]['id']}'),
                  );
                },
              ),
    );
  }
}
