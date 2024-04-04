import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listfourhundred2ItemWidget extends StatelessWidget {
  Listfourhundred2ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 23, top: 12, right: 23,),
        child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Text(
                  "Страна-изготовитель",
                  overflow:
                  TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle
                      .txtMontserratMedium12Gray50001),
              Expanded( child:Divider(
                  height:
                  getVerticalSize(
                      1),
                  thickness:
                  getVerticalSize(
                      1),
                  color: ColorConstant
                      .gray20003,
                  indent:
                  getHorizontalSize(
                      6))),
              Container(
                  width: MediaQuery.of(context).size. width/3,
                  padding: getPadding(
                      left: 6, bottom: 1),
                  child: Text("характеристика",
                      overflow:
                      TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .txtMontserratMedium12Blue600))
            ]));
  }
}
