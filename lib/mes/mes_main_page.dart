import 'package:careme24/core/app_export.dart';
import 'package:careme24/mes/what_to_do_mes_card.dart';
import 'package:careme24/theme/app_style.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../custom_widget_my/for_whom.dart';
import '../custom_widget_my/paid_service_swither.dart';

final _controller = ValueNotifier<bool>(VersionConstant.isPaidSubscription);

class MESMainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    WhoCall.changeWho("МЧС ВЫЗВАН");
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 49,
                leading: Icon(Icons.menu),
                centerTitle: true,
                title: AppbarTitle(text: "МЧС"),
                styleType: Style.bgFillBlue60001),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, top: 21, right: 20, bottom: 21),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 2, right: 3),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ForWhom(name: 'Мне',),
                                  PaySwitcher(),
                                ])),
                        Padding(
                          padding: getPadding(top: 14),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(178, 218, 255, 100),
                            ),
                            width: MediaQuery.of(context).size.width - 40,
                            height: 80,
                            child: Padding(
                              padding: getPadding(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text(
                                        'Проблема',
                                        style: AppStyle.txtMontserratSemiBold19,
                                        overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath:
                                    ImageConstant.imgArrowdownLightBlue900,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                            getPadding(left: 3, top: 30, right: 3, bottom: 5),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  WhatDoMESCard(
                                    color_icon: ColorConstant.pinkIcon,
                                    icon_path: ImageConstant.fireFitherIcon,
                                    action_text: "Сообщить",
                                  ),WhatDoMESCard(
                                    color_icon: ColorConstant.violIcon,
                                    icon_path: ImageConstant.screenIcon,
                                    action_text: "Помощь онлайн",
                                  ),WhatDoMESCard(
                                    color_icon: ColorConstant.pinkA200,
                                    icon_path: ImageConstant.noteIcon,
                                    action_text: "Заявление",
                                  ), WhatDoMESCard(
                                    color_icon: ColorConstant.greenA70002,
                                    icon_path: ImageConstant.starNotificationIcon,
                                    action_text: "Рекомендации",
                                  ),
                                ]))
                      ])),
            )));
  }
}