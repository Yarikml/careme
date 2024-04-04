import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PrehistoricPhenomenonHailOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, top: 12, bottom: 20),
                    onTap: () {
                      onTapArrowleft85(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Природные явления"),
                styleType: Style.bgFillBlue60001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 22),
                    child: Padding(
                        padding: getPadding(left: 24, right: 22, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(239),
                                  margin: getMargin(right: 89),
                                  child: Text("Рекомендации по охране здоровья",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRomanSemiBold18Bluegray800)),
                              Container(
                                  margin: getMargin(top: 11),
                                  padding: getPadding(top: 19, bottom: 19),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 54,
                                            width: 54,
                                            margin: getMargin(bottom: 98),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgHomepage1114609)),
                                        Container(
                                            width: getHorizontalSize(218),
                                            child: Text(
                                                "Ни в коем случае не выходите на улицу, закройте все окна и держитесь от них подальше. Не пользуйтесь электроприборами, так как град может сопровождаться электрическим разрядом молнии.",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium15))
                                      ])),
                              Container(
                                  margin: getMargin(top: 12),
                                  padding: getPadding(
                                      left: 16, top: 19, right: 16, bottom: 19),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 54,
                                        width: 54,
                                        padding: IconButtonPadding.PaddingAll6,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSort)),
                                    Container(
                                        width: getHorizontalSize(180),
                                        margin: getMargin(
                                            left: 14, top: 9, bottom: 6),
                                        child: Text(
                                            "Постарайтесь найти себе надежное укрытие.",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium14))
                                  ])),
                              Container(
                                  margin: getMargin(top: 12),
                                  padding: getPadding(top: 15, bottom: 15),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 54,
                                            width: 54,
                                            margin:
                                                getMargin(top: 3, bottom: 85),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFrame17)),
                                        Container(
                                            width: getHorizontalSize(229),
                                            margin: getMargin(top: 3),
                                            child: Text(
                                                "Не пытайтесь найти укрытие под деревьями, так как велик риск не только попадания в них молний, но и того, что крупные градины и шквалистый ветер могут ломать ветви деревьев, что может нанести вам дополнительные повреждения.",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14))
                                      ])),
                              Container(
                                  margin: getMargin(top: 12),
                                  padding: getPadding(
                                      left: 16, top: 18, right: 16, bottom: 18),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 54,
                                            width: 54,
                                            margin: getMargin(bottom: 133),
                                            padding:
                                                IconButtonPadding.PaddingAll6,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCarvehicletra)),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(213),
                                                margin:
                                                    getMargin(left: 14, top: 1),
                                                child: Text(
                                                    "Ни в коем случае не покидайте во время града автомобиль! Держитесь дальше от стекол, желательно развернуться к ним спиной, лицом к центру салона и прикрыть глаза руками или одеждой. Если с Вами оказались маленькие дети, то их необходимо заслонить собой.",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanMedium14)))
                                      ]))
                            ]))))));
  }

  onTapArrowleft85(BuildContext context) {
    Navigator.pop(context);
  }
}
