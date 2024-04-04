import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class NewsReadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, top: 12, bottom: 10),
                    onTap: () {
                     Navigator.pop(context);

                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Новости"),
                styleType: Style.bgFillBlue60001),
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                            Padding(
                                padding: getPadding(left: 23, top: 23),
                                child: Text("город",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratMedium15)),
                            Container(
                                width: MediaQuery.of(context).size.width-45,
                                margin: getMargin(left: 23, top: 6),
                                child: Text(
                                    "Следственный комитет подключился к проблеме с уборкой улиц от снега в Новосибирске",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratSemiBold18)),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding:
                                        getPadding(left: 23, top: 7, right: 23),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 1),
                                              child: Text("26.07.2023",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12Gray50001)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, top: 1, bottom: 1),
                                              child: Text("22:02",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12Gray50001)),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgEyeGray50001,
                                              height: getVerticalSize(6),
                                              width: getHorizontalSize(16),
                                              margin:
                                                  getMargin(top: 4, bottom: 4)),
                                          Padding(
                                              padding: getPadding(left: 5),
                                              child: Text("30 546",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12Gray50001))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: MediaQuery.of(context).size.width-45,
                                    margin:
                                        getMargin(left: 23, top: 13, right: 21),
                                    child: Text(
                                        "Следователи СК начали доследственную проверку по следам публикаций о некачественной уборке снега в Новосибирске. Об этом сегодня рассказали в пресс-службе областного следственного управления ведомства.\n\n— Опубликовано сообщение о том, что дорожные службы Новосибирска не справляются с очисткой общественных дорог и тротуаров от снега, чем существенно нарушаются права и законные интересы местных жителей, — рассказали в СК. — Следственными органами СК России по Новосибирской области организована доследственная проверка о некачественной уборке снега в городе Новосибирске.\n\nСледователи проверят изложенные в публикации факты, а также изучат деятельность должностных лиц, в обязанности которых входит чистить проезжую часть и тротуары от снега. Если факты, изложенные в публикации, подтвердятся, в отношении виновных может быть возбуждено дело по статье 293 УК РФ (халатность). Максимальное наказание за такое преступление — штраф до 120 тысяч рублей или арест до 3 месяцев.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium15Bluegray800))),



                          ])))
                    ]))));
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newsButtonContainerScreen);
  }
}
