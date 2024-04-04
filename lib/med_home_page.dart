import 'package:careme24/theme/app_style.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_drop_down.dart';
import 'package:careme24/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

import 'core/constants/constants.dart';
import 'core/utils/color_constant.dart';
import 'core/utils/image_constant.dart';
import 'core/utils/size_utils.dart';
import 'custom_widget_my/for_whom.dart';
import 'custom_widget_my/paid_service_swither.dart';
import 'custom_widget_my/what_do_med_card.dart';
import 'mediacl_card/medical_card_page_list.dart';

final _controller = ValueNotifier<bool>(false);

class HoneyMainPage extends StatelessWidget {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    TipyHelp.changeHelp("Передите в чат с врачем");
    WhoCall.changeWho("ВРАЧ ВЫЗВАН");
    AfterPay.changeAfterSmile();
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 49,
                leading: Icon(Icons.menu),
                centerTitle: true,
                title: AppbarTitle(text: "Медицинская помощь"),
                styleType: Style.bgFillBlue60001),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, top: 21, right: 20, bottom: 21),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MedicalCardListPage()));
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 40,
                            width: 150,
                            color: Colors.red,
                            child: Text('MEDKART'),
                          ),
                        ),
                        Padding(
                            padding: getPadding(left: 2, right: 3),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ForWhom(
                                    name: 'Мне',
                                  ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text('Проблема',
                                        style: AppStyle.txtMontserratSemiBold19,
                                        overflow: TextOverflow.ellipsis),
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
                            padding: getPadding(
                                left: 3, top: 30, right: 3, bottom: 5),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  WhatDoMedCard(
                                    color_icon: ColorConstant.blueicon,
                                    icon_path: ImageConstant.doctorIcon,
                                    action_text: "Вызов врача",
                                  ),
                                  WhatDoMedCard(
                                    color_icon: ColorConstant.violet,
                                    icon_path: ImageConstant.notePenIcon,
                                    action_text: "Запись к врачу",
                                  ),
                                  WhatDoMedCard(
                                    color_icon: ColorConstant.yellow700,
                                    icon_path: ImageConstant.medPhoneIcon,
                                    action_text: "Помощь онлайн",
                                  ),
                                  WhatDoMedCard(
                                    color_icon: ColorConstant.green400,
                                    icon_path: ImageConstant.twoArmPlusIcon,
                                    action_text: "Самопомощь",
                                  ),
                                ]))
                      ])),
            )));
  }
}
