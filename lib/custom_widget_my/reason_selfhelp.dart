import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../presentation/button_honey_call_screen/call_an_ambulance.dart';
import '../routes/app_routes.dart';
import '../theme/app_style.dart';

class ReasonSelfHelp extends StatefulWidget {
  String text;
  late  bool disable;
  Color backgroundColor;

  ReasonSelfHelp({
    required this.text,
    required this.disable,
    required this.backgroundColor,
  });


  @override
  State<ReasonSelfHelp> createState() => _ReasonSelfHelpState();
}

class _ReasonSelfHelpState extends State<ReasonSelfHelp> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
