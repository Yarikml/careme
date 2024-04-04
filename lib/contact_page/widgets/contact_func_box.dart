import 'package:flutter/material.dart';

class ContactFuncBox extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color color;
  const ContactFuncBox(
      {required this.imagePath,
      required this.title,
      required this.color,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.center,
          color: color,
          height: 54,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath),
              Text(
                title,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ));
  }
}
