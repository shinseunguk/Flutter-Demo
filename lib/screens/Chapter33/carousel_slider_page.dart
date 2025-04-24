import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarouselSliderPage extends StatefulWidget {
  const CarouselSliderPage({super.key});

  @override
  State<CarouselSliderPage> createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  List imageList = [
    'https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/10/flower-276014_1280.jpg',
    'https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/06/19/20/13/sunset-815270_1280.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 33강\n(Carousel Slider - 자동 슬라이드, 인디케이터 만들기)',
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
          SizedBox(height: 300, child: Stack(children: [sliderWidget(), sliderIndicator()])),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text("Welcome to the carousel slide app", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }

  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items:
          imageList.map((imgLink) {
            return Builder(
              builder: (context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image(fit: BoxFit.fill, image: NetworkImage(imgLink)),
                );
              },
            );
          }).toList(),
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  Widget sliderIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            imageList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(_current == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
