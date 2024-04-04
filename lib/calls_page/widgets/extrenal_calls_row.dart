import 'package:flutter/material.dart';

import '../../custom_widget_my/paid_service_swither.dart';

class ExtrenalCallsWidget extends StatelessWidget {
  const ExtrenalCallsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36, bottom: 26),
          child: Text(
            'Экстренные службы',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xff2c3e4f),
            ),
          ),
        ),
        Row(
          children: [
            Image.asset('assets/images/Frame 8002.png'),
            Container(
                height: 57,
                width: 57,
                margin: EdgeInsets.only(
                  left: 6,
                  right: 6,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xff92a3ff)),
                child: Image.asset('assets/images/Frame.png')),
            Image.asset('assets/images/Frame 8004.png'),
            Spacer(),
            PaySwitcher(
              isVisible: false,
            )
          ],
        ),
      ],
    );
  }
}
