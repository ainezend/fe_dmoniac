import 'package:flutter/material.dart';
import 'package:fe_dmoniac/pages/regist_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistPage(),
    );
  }
}