import 'package:flutter/material.dart';

class ContactInfoBox extends StatelessWidget {
  final String phoneNumber;
  final String country;
  final String address;
  const ContactInfoBox(
      {required this.phoneNumber,
      required this.country,
      required this.address,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 40),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Телефон:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff2c3e4f),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Страна:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff2c3e4f),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Адрес:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff2c3e4f),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                phoneNumber,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3384E2),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                country,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3384E2),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
               address,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3384E2),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
