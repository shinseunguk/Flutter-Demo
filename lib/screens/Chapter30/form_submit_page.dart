import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Chapter30/success_page.dart';

class FormSubmitPage extends StatefulWidget {
  const FormSubmitPage({super.key});

  @override
  State<FormSubmitPage> createState() => _FormSubmitPageState();
}

class _FormSubmitPageState extends State<FormSubmitPage> {
  final _key = GlobalKey<FormState>();
  late String _username, _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), // 뒤로가기 아이콘 색상 설정
        title: const Text(
          '핵심 강좌 30강 (Form - 양식 제출)',
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
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              usernameInput(),
              const SizedBox(height: 15),
              emailInput(),
              const SizedBox(height: 15),
              submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget usernameInput() {
    return TextFormField(
      autocorrect: true,
      validator: (val) {
        if (val!.isEmpty) {
          return 'The input is empty';
        } else {
          return null;
        }
      },
      onSaved: (username) => _username = username as String,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Input your username',
        labelText: 'Username',
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget emailInput() {
    return TextFormField(
      autocorrect: true,
      validator: (val) {
        if (val!.isEmpty) {
          return 'The input is empty';
        } else {
          return null;
        }
      },
      onSaved: (email) => _email = email! as String,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Input your email',
        labelText: 'Email Address',
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_key.currentState!.validate()) {
          _key.currentState!.save();
          print('$_username $_email');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessPage(username: _username, email: _email),
            ),
          );
        } else {
          print('Form is not valid');
        }
      },
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: const Text("SUBMIT", style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
