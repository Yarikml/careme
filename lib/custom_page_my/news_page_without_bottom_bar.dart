import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../presentation/news_button_page/widgets/newsbutton_item_widget.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';

int valueMenu = 1;

class NewsButtonPageWithoutBottomBar extends StatefulWidget {
  @override
  State<NewsButtonPageWithoutBottomBar> createState() =>
      _NewsButtonPageWithoutBottomBarState();
}

class _NewsButtonPageWithoutBottomBarState
    extends State<NewsButtonPageWithoutBottomBar> {
  Widget TopMenu(int index, String text) {
    return GestureDetector(
        onTap: () {
          valueMenu = index;
          setState(() {});
        },
        child: Padding(
            padding: getPadding(left: 21, bottom: 1),
            child: Text("$text",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: valueMenu == index
                    ? AppStyle.txtMontserratMedium15Blue600
                    : AppStyle.txtMontserratMedium15Bluegray800)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        decoration: AppDecoration.background,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 48,
            color: ColorConstant.blue60001,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomImageView(
                    margin: getMargin(left: 16),
                      svgPath: ImageConstant.imgArrowleft,
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ),
                Expanded(
                  child: Center(
                    child: Text("Новости", style: AppStyle.txtMontserratBold20.copyWith(
                    color: ColorConstant.whiteA700,
                    )),
                  ),
                )
              ],
            ),
          ),
          Container(
              width: double.maxFinite,
              child: Container(
                  margin: getMargin(top: 3),
                  padding: getPadding(top: 12, bottom: 12),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                     // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: IntrinsicWidth(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  TopMenu(1, 'Все'),
                                  TopMenu(2, 'Безопасность'),
                                  TopMenu(3, 'Экология'),
                                  TopMenu(4, 'Происшествия'),
                                ])))
                      ]))),
          Expanded(
              child: Padding(
                  padding: getPadding(left: 21, right: 21),
                  child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: getVerticalSize(10));
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return NewsbuttonItemWidget();
                      })))
        ]));
  }
}
