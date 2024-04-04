// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:careme24/core/ui/user_widget.dart';
import 'package:flutter/material.dart';

class TransmissionProfile extends StatelessWidget {
  final String name;
  const TransmissionProfile({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.fromLTRB(23, 60, 23, 0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.close,
                size: 26,
                color: Color(0xff2C3E4F),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 43,
            padding: EdgeInsets.symmetric(vertical: 12),
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(
                'Выберите кому передать профиль',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 30,
            color: Color(0xffDDDEE2),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 28,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(5, 0 , 5, 18),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          UserWidget(),
          SizedBox(height: 12,),
          UserWidget(),
        ],
      ),
    );
  }
}
