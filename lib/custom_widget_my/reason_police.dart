import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../presentation/button_call_police_three_screen/call_a_police.dart';
import '../routes/app_routes.dart';
import '../theme/app_style.dart';

class ReasonPolice extends StatefulWidget {
  String text;
  late  bool disable;
  Color backgroundColor;

  ReasonPolice({
    required this.text,
    required this.disable,
    required this.backgroundColor,
  });


  @override
  State<ReasonPolice> createState() => _ReasonPoliceState();
}

class _ReasonPoliceState extends State<ReasonPolice> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.backgroundColor = Color.fromRGBO(254, 246, 225, 100);
          Future.delayed(Duration(seconds: 1), () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ButtonCallPoliceThreeScreen(widget.text
                    )));
          });

        });
      },
      child: Container(
        height: 80,
        color: (widget.disable == true) ? ColorConstant.gray200 : widget.backgroundColor,
        child: Padding(
          padding: getPadding(left: 19),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.text,
              style:  (widget.disable == true) ? AppStyle.txtMontserratMedium17Bluegray300 : AppStyle.txtMontserratMedium17,
            ),
          ),
        ),
      ),
    );
  }
}
