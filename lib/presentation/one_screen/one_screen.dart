import 'package:careme24/core/app_export.dart';import 'package:careme24/widgets/app_bar/appbar_image.dart';import 'package:careme24/widgets/app_bar/appbar_title.dart';import 'package:careme24/widgets/app_bar/custom_app_bar.dart';import 'package:careme24/widgets/custom_button.dart';import 'package:careme24/widgets/custom_radio_button.dart';import 'package:careme24/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class OneScreen extends StatelessWidget {TextEditingController nameController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController addresslineoneController = TextEditingController();

TextEditingController postalcodeController = TextEditingController();

String radioGroup = "";

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 43, leading: AppbarImage(height: getVerticalSize(16), width: getHorizontalSize(11), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 32, top: 12, bottom: 20), onTap: () {onTapArrowleft29(context);}), centerTitle: true, title: AppbarTitle(text: "Адрес доставки"), actions: [AppbarImage(height: getSize(26), width: getSize(26), imagePath: ImageConstant.imgGroup7508, margin: getMargin(left: 14, top: 10, right: 60, bottom: 12))], styleType: Style.bgFillBlue60001), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: getPadding(left: 23, top: 62, right: 23), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomTextFormField(focusNode: FocusNode(), controller: nameController, hintText: "Шашлык Башлык Иванович"), CustomTextFormField(focusNode: FocusNode(), controller: cityController, hintText: "Москва", margin: getMargin(top: 20)), CustomTextFormField(focusNode: FocusNode(), controller: addresslineoneController, hintText: "Залупенская 6, кв 4", margin: getMargin(top: 20)), CustomButton(height: getVerticalSize(56), text: "Россия", margin: getMargin(top: 20), variant: ButtonVariant.OutlineGray50001_1, padding: ButtonPadding.PaddingT17, fontStyle: ButtonFontStyle.MontserratMedium18Bluegray800, suffixWidget: Container(margin: getMargin(left: 30), decoration: BoxDecoration(border: Border.all(color: ColorConstant.gray50001, width: getHorizontalSize(2), strokeAlign: strokeAlignCenter)), child: CustomImageView(svgPath: ImageConstant.imgArrowdownGray50001))), CustomTextFormField(focusNode: FocusNode(), controller: postalcodeController, hintText: "6330012", margin: getMargin(top: 20), textInputAction: TextInputAction.done, textInputType: TextInputType.phone), Padding(padding: getPadding(top: 16, right: 90, bottom: 5), child: CustomRadioButton(text: "В моем адресе нет почтового кода", iconSize: getHorizontalSize(20), value: "В моем адресе нет почтового кода", groupValue: radioGroup, margin: getMargin(top: 16, right: 90, bottom: 5), fontStyle: RadioFontStyle.MontserratMedium12, onChange: (value) {radioGroup = value;}))]))), bottomNavigationBar: CustomButton(text: "Сохранить", margin: getMargin(left: 20, right: 26, bottom: 40), variant: ButtonVariant.OutlineIndigo20049_1, fontStyle: ButtonFontStyle.MontserratRomanSemiBold18))); } 
onTapArrowleft29(BuildContext context) { Navigator.pop(context); } 
 }
