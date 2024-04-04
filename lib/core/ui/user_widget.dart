import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 52,
      width: double.maxFinite,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(52),
            child: Image.asset(
              "assets/images/Avatar.png",
              width: 52,
              height: 52,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Пономаренко Ольга",
                  style: TextStyle(
                    color: Color(0xff218CEF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  "+7-952-943-43-88",
                  style: TextStyle(
                    color: Color(0xff2C3E4F),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8,)
              ],
            ),
          ),
          Center(
            child: SizedBox(
              width: 17,
              height: double.maxFinite,
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.chevron_right,
                  size: 20,
                  color: Color(0xff8E969B),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
