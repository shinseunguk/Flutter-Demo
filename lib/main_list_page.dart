import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter23/provider/album_provider_two.dart';
import 'package:flutter_demo/screens/Chapter24/locator/locator.dart';
import 'package:flutter_demo/screens/Chapter24/view/get_it_page.dart';
import 'package:provider/provider.dart' as provider;
import 'screens/placeholder_page.dart';
import 'screens/Chapter1/hello_word_page.dart';
import 'screens/Chapter2/column_row_table_page.dart';
import 'screens/Chapter3/stack_page.dart';
import 'screens/Chapter4/gesture_detector_page.dart';
import 'screens/Chapter5/list_view_page.dart';
import 'screens/Chapter6/list_view_builder_page.dart';
import 'screens/Chapter7/grid_view_page.dart';
import 'screens/Chapter8/grid_view_builder_page.dart';
import 'screens/Chapter9/scroll_page.dart';
import 'screens/Chapter10/align_page.dart';
import 'screens/Chapter11/alert_dialog_page.dart';
import 'screens/Chapter12/show_image_page.dart';
import 'screens/Chapter13/responsive_page.dart';
import 'screens/Chapter14/gradation_page.dart';
import 'screens/Chapter15/button_page.dart';
import 'screens/Chapter16/navigator_page.dart';
import 'screens/Chapter17/youtube_page.dart';
import 'screens/Chapter18/load_json_page.dart';
import 'screens/Chapter19/disk_save_load_page.dart';
import 'screens/Chapter20/navigation_bar_page.dart';
import 'screens/Chapter21/refresh_indicator_page.dart';
import 'screens/Chapter22/view/album_view.dart';
import 'screens/Chapter23/view/album_view_two.dart';
import 'screens/Chapter24/view/get_it_page.dart';
import 'screens/Chapter25/number_count_home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as riverpod;
import 'screens/Chapter26/getx_page.dart';
import 'screens/Chapter27/getx_obs_page.dart';

class MainListPage extends StatelessWidget {
  final List<String> items = [
    '핵심 강좌 27강 (상태 관리 6 - GetX 사용 2: Reactive State Manager)',
    '핵심 강좌 26강 (상태 관리 5 - GetX 사용 1: Simple State Manager)',
    '핵심 강좌 25강 (상태 관리 4 - Riverpod 사용)',
    '핵심 강좌 24강 (상태 관리 3 - get_it 사용)',
    '핵심 강좌 23강 (상태 관리 2 - Provider 패턴)',
    '핵심 강좌 22강 (상태 관리 1 - BLoC 패턴)',
    '핵심 강좌 21강 (Refresh Indicator - 아래로 스와이프하여 새로고침)',
    '핵심 강좌 20강 (Bottom Navigation Bar, 화면 하단 네비게이션바 배치 및 setState 사용)',
    '핵심 강좌 19강 (디스크에 간단한 데이터 저장 및 불러오기 - SharedPreferences 사용)',
    '핵심 강좌 18강 (JSON 데이터 불러오기 - Future 사용)',
    '핵심 강좌 17강 (유튜브 영상 삽입)',
    '핵심 강좌 16강 (다른 화면으로 이동(페이지 이동 - Navigator 사용))',
    '핵심 강좌 15강 (버튼 만들기)',
    '핵심 강좌 14강 (그라데이션 적용하기)',
    '핵심 강좌 13강 (Flexible, Expanded 사용하여 반응형으로 만들기)',
    '핵심 강좌 12강 (이미지 보여주기)',
    '핵심 강좌 11강 (AlertDialog - 팝업창 띄우기)',
    '핵심 강좌 10강 (Align - 정렬하기)',
    '핵심 강좌 9강 (스크롤 기능 구현)',
    '핵심 강좌 8강 (GridView 효율적으로 사용하기)',
    '핵심 강좌 7강 (GridView 사용하기)',
    '핵심 강좌 6강 (ListView 효율적으로 사용하기)',
    '핵심 강좌 5강 (ListView 사용하여 피드 만들기)',
    '핵심 강좌 4강 (GestureDetector로 터치 이벤트 처리하기)',
    '핵심 강좌 3강 (Stack 사용하여 여러 위젯 중첩하기)',
    '핵심 강좌 2강 (Column, Row 테이블 구성)',
    '핵심 강좌 1강 (Hello World 출력 및 Scaffold 뼈대 구성)',
  ];

  final Map<String, Widget> screens = {
    '핵심 강좌 27강 (상태 관리 6 - GetX 사용 2: Reactive State Manager)': GetxObsPage(),
    '핵심 강좌 26강 (상태 관리 5 - GetX 사용 1: Simple State Manager)': GetXPage(),
    '핵심 강좌 25강 (상태 관리 4 - Riverpod 사용)': riverpod.ProviderScope(child: NumberCountHomePage()),
    '핵심 강좌 24강 (상태 관리 3 - get_it 사용)': GetItPage(),
    '핵심 강좌 23강 (상태 관리 2 - Provider 패턴)': provider.ChangeNotifierProvider(
      create: (context) => AlbumProviderTwo(),
      child: AlbumViewTwo(),
    ),
    '핵심 강좌 22강 (상태 관리 1 - BLoC 패턴)': AlbumView(),
    '핵심 강좌 21강 (Refresh Indicator - 아래로 스와이프하여 새로고침)': RefreshIndicatorPage(),
    '핵심 강좌 20강 (Bottom Navigation Bar, 화면 하단 네비게이션바 배치 및 setState 사용)': NavigationBarPage(),
    '핵심 강좌 19강 (디스크에 간단한 데이터 저장 및 불러오기 - SharedPreferences 사용)': DiskSaveLoadPage(),
    '핵심 강좌 18강 (JSON 데이터 불러오기 - Future 사용)': LoadJsonPage(),
    '핵심 강좌 17강 (유튜브 영상 삽입)': YoutubePage(),
    '핵심 강좌 16강 (다른 화면으로 이동(페이지 이동 - Navigator 사용))': NavigatorPage(),
    '핵심 강좌 15강 (버튼 만들기)': ButtonPage(),
    '핵심 강좌 14강 (그라데이션 적용하기)': GradationPage(),
    '핵심 강좌 13강 (Flexible, Expanded 사용하여 반응형으로 만들기)': ResponsivePage(),
    '핵심 강좌 12강 (이미지 보여주기)': ShowImagePage(),
    '핵심 강좌 11강 (AlertDialog - 팝업창 띄우기)': AlertDialogPage(),
    '핵심 강좌 10강 (Align - 정렬하기)': AlignPage(),
    '핵심 강좌 9강 (스크롤 기능 구현)': ScrollPage(),
    '핵심 강좌 8강 (GridView 효율적으로 사용하기)': GridViewBuilderPage(),
    '핵심 강좌 7강 (GridView 사용하기)': GridViewPage(),
    '핵심 강좌 6강 (ListView 효율적으로 사용하기)': ListViewBuilderPage(),
    '핵심 강좌 5강 (ListView 사용하여 피드 만들기)': ListViewPage(),
    '핵심 강좌 4강 (GestureDetector로 터치 이벤트 처리하기)': GestureDetectorPage(),
    '핵심 강좌 3강 (Stack 사용하여 여러 위젯 중첩하기)': StackPage(),
    '핵심 강좌 2강 (Column, Row 테이블 구성)': ColumnRowTablePage(),
    '핵심 강좌 1강 (Hello World 출력 및 Scaffold 뼈대 구성)': HelloWorldPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '플러터(Flutter) 앱 개발',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                items[index],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              trailing: Icon(Icons.arrow_forward), // 리스트 끝에 아이콘 추가
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => screens[items[index]] ?? PlaceholderPage(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
