import 'package:flutter/material.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          "핵심 강좌 20강\n(Bottom Navigation Bar, 화면 하단 네비게이션바 배치 및 setState 사용)",
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
          _selectedIndex == 0
              ? tabContainer(context, Colors.red, "홈")
              : _selectedIndex == 1
              ? tabContainer(context, Colors.green, "검색")
              : tabContainer(context, Colors.blue, "설정"),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
              child: Text(
                "홈",
                style: TextStyle(color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
              ),
            ),
            Tab(
              icon: Icon(Icons.search, color: _selectedIndex == 1 ? Colors.blue : Colors.grey),
              child: Text(
                "검색",
                style: TextStyle(color: _selectedIndex == 1 ? Colors.blue : Colors.grey),
              ),
            ),
            Tab(
              icon: Icon(Icons.settings, color: _selectedIndex == 2 ? Colors.blue : Colors.grey),
              child: Text(
                "설정",
                style: TextStyle(color: _selectedIndex == 2 ? Colors.blue : Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabContainer(BuildContext con, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery.of(con).size.width,
      height: MediaQuery.of(con).size.height,
      color: tabColor,
      child: Center(
        child: Text(tabText, style: const TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}
