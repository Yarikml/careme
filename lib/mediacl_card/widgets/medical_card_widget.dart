import 'package:flutter/material.dart';

class MediacalCardWidget extends StatelessWidget {
  final String displayName;
  final String phoneNumber;
  final String imagePath;
  final VoidCallback onTap;
  const MediacalCardWidget({
    required this.displayName,
    required this.phoneNumber,
    required this.imagePath,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(120, 120, 120, 0.24),
                offset: Offset(0, 0),
                blurRadius: 13,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(children: [
            Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    displayName,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3384E2),
                        fontFamily: 'Montserrat'),
                  ),
                  Text(
                    phoneNumber,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2C3E4F),
                        fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),
            Spacer(),
            Image.asset('assets/images/arrow_rigth.png')
          ]),
        ),
      ),
    );
  }
}
