import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

class WhoWidget extends StatefulWidget {
  late Function callback;
  late String name;
  late String age;

  WhoWidget({
    required this.callback,
    required this.name,
    required this.age,
  });

  @override
  State<WhoWidget> createState() => _WhoWidgetState();
}

class _WhoWidgetState extends State<WhoWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.callback(widget.name);
        });
        Navigator.pop(context);
      },
      child: Container(
        height: 48,
        child: Row(
          children: [
            Padding(
              padding: getPadding(right: 24),
              child: Icon(Icons.person, color: Colors.blue,),
            ),
            Text(widget.name, style: widget.name == "Мне" ? AppStyle.txtMontserratSemiBold18Green : widget.name == "Другому" ? AppStyle.txtMontserratSemiBold18 : AppStyle.txtMontserratSemiBold18Black900,),
            Spacer(),
            Text(
              widget.age,
              style: AppStyle.txtMontserratMedium15Black900,
            )
          ],
        ),
      ),
    );
  }
}
