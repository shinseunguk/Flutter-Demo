import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter21/product.dart';
import 'package:dio/dio.dart';

class RefreshIndicatorPage extends StatefulWidget {
  const RefreshIndicatorPage({super.key});

  @override
  State<RefreshIndicatorPage> createState() => _RefreshIndicatorPageState();
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {
  late Future<List<Product>> productList;
  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    productList = fetchProducts();
  }

  Future<List<Product>> fetchProducts() async {
    late List<Product> products;
    try {
      var response = await dio.get("https://dummyjson.com/products");
      products = response.data['products'].map<Product>((json) => Product.fromJson(json)).toList();
    } catch (e) {
      print(e);
    }

    return products;
  }

  Future<void> refreshData() async {
    setState(() {
      productList = fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 21강\n(Refresh Indicator - 아래로 스와이프하여 새로고침)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // 텍스트를 굵게 처리
            fontSize: 17, // 글자크기 조절
          ),
        ),
        backgroundColor: Colors.blue, // 원하는 색상으로 변경
      ),
      body: RefreshIndicator(
        onRefresh: () => refreshData(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: FutureBuilder<List<Product>>(
            future: productList,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator(strokeWidth: 2));
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('No data found'));
              } else {
                List<Product> products = snapshot.data!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    var data = snapshot.data?[index];
                    return Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
                      child: Text("${data?.title}(${data?.description})"),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
