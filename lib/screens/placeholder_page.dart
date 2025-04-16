import 'package:flutter/material.dart';

class PlaceholderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Placeholder Page')),
      body: Center(child: Text('화면이 준비되지 않았습니다.')),
    );
  }
}
