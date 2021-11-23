import 'package:flutter/material.dart';
import 'package:we_care/const.dart';
import 'package:we_care/screens/homepage/home_page.dart';
import 'package:we_care/screens/login/sign_in_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff0077B6),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shadowColor: const Color(0xff0077B6).withOpacity(.9),
            elevation: 10,
            primary: const Color(0xff0077B6),
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
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
    return const SignInUp();
  }
}
