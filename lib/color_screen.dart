import 'package:flutter/material.dart';
class ColorScreen extends StatelessWidget {
  ColorScreen({Key? key,  this.screenColor}) : super(key: key);

  var screenColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: screenColor,
        ),
      ),
    );
  }
}
