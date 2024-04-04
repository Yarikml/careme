import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ListReasonSettingAddItemPage extends StatelessWidget {
  TextEditingController _controlleradditem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
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
                      Navigator.pop(context);
                    }),
                actions: [
                  AppbarImage(
                      height: 24,
                      width: 24,
                      svgPath: ImageConstant.imgCheckMark,
                      margin: getMargin(right: 24),
                      onTap: () {
                      })
                ],
                centerTitle: true,
                title: AppbarTitle(text: "Настройки"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: MediaQuery.of(context).size.width - 40,
              padding: getPadding(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Добавьте название пункта",
                    style: AppStyle.txtMontserratMedium18Black900,
                  ),
                  Padding(
                    padding: getPadding(top: 24),
                    child: TextField(
                      controller: _controlleradditem,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Боль в ушах',
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}