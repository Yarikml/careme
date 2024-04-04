import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsbuttonItemWidget extends StatelessWidget {
  NewsbuttonItemWidget();

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){ Navigator.pushNamed(context, AppRoutes.newsReadScreen);},
        child:Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        //side:  BorderSide(color: Colors.green,width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),

      child: Row(

          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage15,
              height: getVerticalSize(
                126,
              ),
              width: getHorizontalSize(
                99,
              ),
              alignment: Alignment.center,
            ),
            Container(
              padding: getPadding(left: 16, right: 16 ),
                width: MediaQuery.of(context).size.width/1.7,
                child:Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgEyeGray50001,
                          height: getVerticalSize(
                            6,
                          ),
                          width: getHorizontalSize(
                            16,
                          ),
                          margin: getMargin(
                            top: 2,
                            bottom: 3,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                          ),
                          child: Text(
                            "30 546",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium10Gray50001,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                      ),
                      child: Text(
                        "22: 02",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: AppStyle.txtMontserratMedium10Gray50001,
                      ),
                    ),
                  ],
                ),
                Container(

                  margin: getMargin(
                    top: 12,
                  ),
                  child: Text(
                    "Супер интересное название супер интересной статьи",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Подробнее",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular10,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgVector87Blue30001,
                        height: getVerticalSize(
                          10,
                        ),
                        width: getHorizontalSize(
                          5,
                        ),
                        margin: getMargin(

                          bottom: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ));
  }
}