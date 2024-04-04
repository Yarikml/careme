import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SourceBottomsheet extends StatelessWidget {
  final VoidCallback firstTap;
  final VoidCallback secondTap;
  const SourceBottomsheet(
      {required this.firstTap, required this.secondTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: firstTap,
            child: Container(
              height: 30,
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text('From Gallery'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: secondTap,
            child: Container(
              height: 30,
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text('From Camera'),
            ),
          ),
        ],
      ),
    );
  }
}
