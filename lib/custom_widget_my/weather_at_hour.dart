import 'package:careme24/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import '../theme/app_style.dart';

class WheatherAtHour extends StatelessWidget {
  late String hours;
  late String temperature;

  WheatherAtHour({
    required this.hours,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
   return Column(
        mainAxisAlignment:
        MainAxisAlignment.start,
        children: [
          Text(hours,
              overflow:
              TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle
                  .txtMontserratMedium12Gray50001),
          Padding(
              padding:
              getPadding(top: 10),
              child: RichText(
                  text:
                  TextSpan(children: [
                    TextSpan(
                        text: temperature ,
                        style: AppStyle.txtMontserratSemiBold15Bluegray800),
                  ]),
                  textAlign:
                  TextAlign.left))
        ]);
  }
}
