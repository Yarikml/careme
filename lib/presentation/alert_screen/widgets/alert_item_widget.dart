import 'package:careme24/app_icon_admin.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class AlertItemWidget extends StatelessWidget {
  AlertItemWidget( );

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
          onTap: (){Navigator.pushNamed(context, AppRoutes.generalInformationScreen);},
          child:Slidable(
            endActionPane:  ActionPane(
              extentRatio: 0.8,
              motion:  ScrollMotion(),
              children:  [
                SlidableAction(

                  onPressed: (BuildContext context ) { },
                  backgroundColor:ColorConstant.blueGray800,
                  foregroundColor: Colors.white,
                  icon: AppIconAdmin.no_admin,
                  label: 'Не админ',
                ),
                SlidableAction(
                  onPressed: (BuildContext context ) {},
                  backgroundColor:  ColorConstant.blueGray500,
                  foregroundColor: Colors.white,
                  icon: Icons.pause,
                  label: 'Вкл.',
                ),
                SlidableAction(
                  onPressed: (BuildContext context){},
                  backgroundColor:ColorConstant.gray50002,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Удалить',
                ),
              ],
            ),
        startActionPane: ActionPane(
          motion:  ScrollMotion(),
          children:  [
            SlidableAction(
              onPressed: (BuildContext context ) {
                Navigator.pushNamed(context, AppRoutes.callActivScreen);

                },
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              icon: Icons.call,
              label: 'Звонок',
            ),
            SlidableAction(
              onPressed: (BuildContext context){},
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              icon: CustomIcons.whatsapp,
              label: 'WhatsApp',
            ),
          ],
        ),
        child:  Container(
          padding: getPadding(
            top: 17,
            bottom: 17,
          ),
          decoration: AppDecoration.outlineGray3001,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame801452x52,
                height: getSize(
                  52,
                ),
                width: getSize(
                  52,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    26,
                  ),
                ),
                margin: getMargin(
                  bottom: 1,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 18,
                  top: 6,
                  bottom: 6,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Имя пользователя",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold15Bluegray800,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "+7 983 812 12 22",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratMedium15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ))

      /*Container(
      padding: getPadding(
        top: 17,
        bottom: 17,
      ),
      decoration: AppDecoration.outlineGray3001,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame801452x52,
            height: getSize(
              52,
            ),
            width: getSize(
              52,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                26,
              ),
            ),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 18,
              top: 6,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Имя пользователя",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold15Bluegray800,
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "+7 983 812 12 22",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )*/;
  }
}
