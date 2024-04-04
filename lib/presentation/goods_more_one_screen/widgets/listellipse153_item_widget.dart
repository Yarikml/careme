import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listellipse153ItemWidget extends StatelessWidget {
  Listellipse153ItemWidget();

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: double.maxFinite,
        child:Card(

            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              //side:  BorderSide(color: Colors.green,width: 3),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Container(
          padding: getPadding(
            left: 13,
            top: 7,
            right: 13,
            bottom: 7,
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 1,
                  right: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                     Row(children:[   CustomImageView(
                          imagePath: ImageConstant.imgEllipse152,
                          height: getSize(
                            37,
                          ),
                          width: getSize(
                            37,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              18,
                            ),
                          ),
                        ),
                    SizedBox(width: 10,),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                                  Text(
                                    "Имя пользователя",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratMedium14,
                                  ),
                                  Text(
                                    "Наименование товара",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratMedium12Gray50001,
                                  ),
                        ],
                      )]),
                    Row(
                      children: [
                        Text(
                          "5",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: AppStyle.txtMontserratRegular15,
                        ),
                        CustomImageView(
                          alignment: Alignment.centerRight,
                          svgPath: ImageConstant.imgStarGold,
                          height: getSize(
                            11,
                          ),
                          width: getSize(
                            11,
                          ),
                          margin: getMargin(
                            left: 1,
                            top: 4,
                            bottom: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,


                  child:ListView.separated(
                      scrollDirection: Axis.horizontal,

                      shrinkWrap: true,
                      separatorBuilder:
                          (context, index) {
                        return SizedBox(
                            width:
                            getVerticalSize(9));
                      },
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return CustomImageView(
                            imagePath: ImageConstant
                                .imgFrame7621,

                            radius:
                            BorderRadius.circular(
                                getHorizontalSize(
                                    10)));
                      }),),
              ),
              Container(
                width: getHorizontalSize(
                  300,
                ),
                margin: getMargin(
                  top: 8,
                  right: 3,
                ),
                child: Text(
                  "Большой текст с отзывом. Большой текст с отзывом. Большой текст с отзывом. Большой текст с отзывом. Большой текст с отзывом. ",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratRegular10Bluegray800,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                  right: 1,
                ),
                child: Text(
                  "22.04.2022",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratMedium10Gray300,
                ),
              ),
            ],
          ),
        )),
      )
    ;
  }
}
