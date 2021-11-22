import 'package:flutter/material.dart';
import 'package:we_care/const.dart';
import 'package:we_care/screens/homepage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BufferWidget(),
    );
  }
}

class BufferWidget extends StatelessWidget {
  const BufferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;
    return const HomePage();
  }
}
