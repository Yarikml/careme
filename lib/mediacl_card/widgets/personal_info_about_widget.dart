// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PersonalInfoAboutWidget extends StatefulWidget {
  final String date;
  final String countryAndAddres;
  final String email;
  final String passport;
  PersonalInfoAboutWidget({
    Key? key,
    required this.date,
    required this.countryAndAddres,
    required this.email,
    required this.passport,
  }) : super(key: key);

  @override
  State<PersonalInfoAboutWidget> createState() =>
      _PersonalInfoAboutWidgetState();
}

class _PersonalInfoAboutWidgetState extends State<PersonalInfoAboutWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(29, 15, 17, 17),
        child: Column(
          children: [
            Text(
              widget.date,
              style: TextStyle(
                color: Color(0xff2C3E4F),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 64, right: 53),
              child: Container(
                  height: 36,
                  child: Text(
                    widget.countryAndAddres,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff2C3E4F),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'временное проживание',
              style: TextStyle(
                color: Color(0xff8E969B),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.email,
              style: TextStyle(
                color: Color(0xff2C3E4F),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text('паспорт'),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.passport,
              style: TextStyle(
                color: Color(0xff2C3E4F),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'место выдачи',
              style: TextStyle(
                color: Color(0xff8E969B),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'место прописки',
              style: TextStyle(
                color: Color(0xff8E969B),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/icon-plus.png',
                  width: 12,
                  height: 12,
                  color: Color(0xff2C3E4F),
                ),
                SizedBox(width: 5,),
                Text(
                  'Добавить файл',
                  style: TextStyle(
                    color: Color(0xff2C3E4F),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'документы',
              style: TextStyle(
                color: Color(0xff2C3E4F),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/icon-plus.png',
                  color: Color(0xff2C3E4F),
                  width: 12,
                  height: 12,
                ),
                SizedBox(width: 5,),
                Text(
                  'Добавить файл',
                  style: TextStyle(
                    color: Color(0xff2C3E4F),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
