import 'package:flutter/material.dart';

class CallsSwith extends StatefulWidget {
  @override
  State<CallsSwith> createState() => _CallsSwithState();
}

enum CallType {
  fromMe,
  toMe,
}

class _CallsSwithState extends State<CallsSwith> {
  CallType currentCallType = CallType.fromMe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(
        () {
          if (currentCallType == CallType.fromMe) {
            setState(() {
              currentCallType = CallType.toMe;
            });
          } else {
            setState(() {
              currentCallType = CallType.fromMe;
            });
          }
        },
      ),
      child: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: MediaQuery.of(context).size.width - 23,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Color(0xffB3B3B3))),
            alignment: currentCallType == CallType.toMe
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff3384e2),
                  borderRadius: BorderRadius.circular(7)),
              height: 29,
              width: MediaQuery.of(context).size.width / 2 - 13,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 8, 60, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'От меня',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: currentCallType == CallType.fromMe
                          ? Colors.white
                          : Color(0xffB3B3B3)),
                ),
                Text(
                  'Мне',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: currentCallType == CallType.fromMe
                          ? Color(0xffB3B3B3)
                          : Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
