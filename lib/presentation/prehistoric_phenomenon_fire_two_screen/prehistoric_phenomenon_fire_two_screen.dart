import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:careme24/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PrehistoricPhenomenonFireTwoScreen extends StatelessWidget {
  TextEditingController avoidpanicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, top: 12, bottom: 20),
                    onTap: () {
                      onTapArrowleft96(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Природные явления"),
                styleType: Style.bgFillBlue60001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 21),
                    child: Padding(
                        padding: getPadding(left: 23, right: 23, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(229),
                                  child: Text(
                                      "Как вести себя в лесу в пожароопасный период",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtH1)),
                              Padding(
                                  padding: getPadding(top: 13, right: 6),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(11),
                                            width: getSize(11),
                                            margin: getMargin(bottom: 42),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue600,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(5)))),
                                        Container(
                                            width: getHorizontalSize(304),
                                            child: Text(
                                                "разводить костры, использовать мангалы, другие приспособления для приготовления пищи",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium15Bluegray800))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 11, right: 16),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(11),
                                            width: getSize(11),
                                            margin:
                                                getMargin(top: 4, bottom: 42),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue600,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(5)))),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(294),
                                                margin: getMargin(left: 7),
                                                child: Text(
                                                    "курить, бросать горящие спички, окурки, вытряхивать из курительных трубок горящую золу",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium15Bluegray800)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14, right: 37),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(11),
                                            width: getSize(11),
                                            margin: getMargin(bottom: 24),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue600,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(5)))),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(273),
                                                margin: getMargin(left: 7),
                                                child: Text(
                                                    "стрелять из оружия, использовать пиротехнику",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium15Bluegray800)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 11, right: 20),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(11),
                                            width: getSize(11),
                                            margin:
                                                getMargin(top: 3, bottom: 60),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue600,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(5)))),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(290),
                                                margin: getMargin(left: 7),
                                                child: Text(
                                                    "оставлять в лесу промасленный или пропитанный бензином, керосином или иными горючими веществами материал",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium15Bluegray800)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 11, right: 21),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(11),
                                            width: getSize(11),
                                            margin:
                                                getMargin(top: 4, bottom: 60),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue600,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(5)))),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(289),
                                                margin: getMargin(left: 7),
                                                child: Text(
                                                    "заправлять топливом баки работающих двигателей, а также курить или пользоваться открытым огнем вблизи заправляемых машин",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium15Bluegray800)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 11, right: 41),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(11),
                                            width: getSize(11),
                                            margin:
                                                getMargin(top: 3, bottom: 42),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue600,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(5)))),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(269),
                                                margin: getMargin(left: 7),
                                                child: Text(
                                                    "оставлять на открытой местности бутылки, осколки стекла и другой мусор",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium15Bluegray800)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(11),
                                            width: getSize(11),
                                            margin:
                                                getMargin(top: 1, bottom: 6),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue600,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(5)))),
                                        Padding(
                                            padding: getPadding(left: 7),
                                            child: Text(
                                                "выжигать траву на полях",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium15Bluegray800))
                                      ])),
                              Container(
                                  width: getHorizontalSize(239),
                                  margin: getMargin(top: 15, right: 89),
                                  child: Text("Рекомендации по охране здоровья",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRomanSemiBold18Bluegray800)),
                              Container(
                                  margin: getMargin(top: 11),
                                  padding: getPadding(top: 16, bottom: 16),
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
                                                getMargin(top: 2, bottom: 62),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFrame24)),
                                        Container(
                                            width: getHorizontalSize(224),
                                            margin: getMargin(top: 2),
                                            child: Text(
                                                "При обнаружении очага возгорания в лесу необходимо немедленно известить об этом противопожарную службу по номеру телефона 112",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium15))
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
                                                getMargin(top: 3, bottom: 34),
                                            padding:
                                                IconButtonPadding.PaddingAll6,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgFrameWhiteA70054x54)),
                                        Container(
                                            width: getHorizontalSize(216),
                                            margin: getMargin(top: 4),
                                            child: Text(
                                                "Двигаться нужно строго вдоль пожара. При нехватке кислорода рекомендуется дышать через мокрый платок или смоченную одежду.",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14))
                                      ])),
                              Container(
                                  margin: getMargin(top: 12),
                                  padding: getPadding(top: 16, bottom: 16),
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
                                                getMargin(top: 2, bottom: 16),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFrame23)),
                                        Container(
                                            width: getHorizontalSize(219),
                                            margin: getMargin(top: 2),
                                            child: Text(
                                                "Если нет возможности уйти от огня, нужно найти ближайший водоем или накрыться мокрой одеждой.",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14))
                                      ])),
                              Container(
                                  width: getHorizontalSize(177),
                                  margin: getMargin(left: 5, top: 17),
                                  child: Text(
                                      "Что делать при пожаре \nв населенном пункте",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRomanMedium15Black900)),
                              Container(
                                  margin: getMargin(top: 10),
                                  padding: getPadding(top: 18, bottom: 18),
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
                                            margin: getMargin(bottom: 14),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgPastecopyicon195303)),
                                        Container(
                                            width: getHorizontalSize(217),
                                            child: Text(
                                                "Забрать и держать при себе документы, поместить ценные вещи в безопасное доступное место",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14))
                                      ])),
                              Container(
                                  margin: getMargin(top: 14),
                                  padding: getPadding(
                                      left: 16, top: 18, right: 16, bottom: 18),
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
                                            svgPath: ImageConstant
                                                .imgCarvehicletra)),
                                    Container(
                                        width: getHorizontalSize(195),
                                        margin: getMargin(left: 14),
                                        child: Text(
                                            "Подготовить к возможному экстренному отъезду транспортные средства",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium14))
                                  ])),
                              Container(
                                  margin: getMargin(top: 14),
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
                                                getMargin(top: 3, bottom: 34),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFrame26)),
                                        Container(
                                            width: getHorizontalSize(222),
                                            margin: getMargin(top: 3),
                                            child: Text(
                                                "Надеть хлопчатобумажную или шерстяную одежду, при себе иметь перчатки, платок, средства защиты глаз (очки и др.)",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14))
                                      ])),
                              Container(
                                  margin: getMargin(top: 14),
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
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgFrame27)),
                                    Container(
                                        width: getHorizontalSize(176),
                                        margin: getMargin(
                                            left: 14, top: 10, bottom: 7),
                                        child: Text(
                                            "Подготовить запас еды и питьевой воды",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium14))
                                  ])),
                              Container(
                                  margin: getMargin(top: 14),
                                  padding: getPadding(top: 9, bottom: 9),
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
                                                getMargin(top: 9, bottom: 48),
                                            padding:
                                                IconButtonPadding.PaddingAll15,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFrame28)),
                                        Container(
                                            width: getHorizontalSize(222),
                                            margin: getMargin(top: 10),
                                            child: Text(
                                                "Внимательно следить за сообщениями по телевидению и радио, средствами оповещения, держать связь со знакомыми в других районах вашей местности",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14))
                                      ]))
                            ])))),
            bottomNavigationBar: CustomTextFormField(
                focusNode: FocusNode(),
                controller: avoidpanicController,
                hintText: "Избегать паники",
                margin: getMargin(left: 23, right: 23, bottom: 50),
                variant: TextFormFieldVariant.OutlineBlack9003f,
                padding: TextFormFieldPadding.PaddingT37,
                fontStyle: TextFormFieldFontStyle.MontserratRomanMedium14,
                textInputAction: TextInputAction.done,
                prefix: Container(
                    padding: getPadding(all: 13),
                    margin: getMargin(left: 16, top: 19, right: 14, bottom: 19),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(27)),
                        gradient: LinearGradient(
                            begin: Alignment(0.97, 0.94),
                            end: Alignment(0.22, 0.05),
                            colors: [
                              ColorConstant.blue500,
                              ColorConstant.lightBlueA200
                            ])),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgStampedefearr)),
                prefixConstraints:
                    BoxConstraints(maxHeight: getVerticalSize(92)))));
  }

  onTapArrowleft96(BuildContext context) {
    Navigator.pop(context);
  }
}
