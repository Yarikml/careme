import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final String imagePath;
  final String userName;
  final String phoneNumber;
  final VoidCallback onTap;
  const ContactWidget({
    required this.imagePath,
    required this.userName,
    required this.phoneNumber,
    required this.onTap,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        margin: EdgeInsets.symmetric(vertical: 15),
        height: 52,
        width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
      Container(
        height: 52,
        width: 52,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(imagePath),
      ),
      SizedBox(width: 10,),
      Padding(padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              userName,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff2c3e4f),
              ),
            ),
            Spacer(),
            Text(
              phoneNumber,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xff8E969B),
              ),
            ),
        ],
      ),
      ),
      ],
    ),
      ),
    );
  }
}