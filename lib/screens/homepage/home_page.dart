import 'package:flutter/material.dart';
import 'package:we_care/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Height $screenH \nWidth $screenW'),
          ),
          Container(
            height: screenH * 0.5, //50% of screen height
            width: screenW * 0.25, //25% of screen width
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
