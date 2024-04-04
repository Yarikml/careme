import '../../custom_page_my/news_page_without_bottom_bar.dart';
import '../../med_home_page.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../home_screen/home_screen.dart';

import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

int valueMenu=1;

class NewsButtonPage extends StatefulWidget {

  late int bottomBarIndex;
  NewsButtonPage({
    required this.bottomBarIndex,
  });

  @override
  State<NewsButtonPage> createState() => _NewsButtonPageState();
}

List<BottomMenuModel> bottomMenuList = [
  BottomMenuModel(
    icon: ImageConstant.imgFrameBlue600,
    title: "Главная",
    type: BottomBarEnum.tf,
  ),
  BottomMenuModel(
    icon: ImageConstant.imgLocationGray400,
    title: "Мед",
    type: BottomBarEnum.tf,
  ),
  BottomMenuModel(
    icon: ImageConstant.imgFrameGray40001,
    title: "Полиция",
    type: BottomBarEnum.tf,
  ),
  BottomMenuModel(
    icon: ImageConstant.imgFireGray40001,
    title: "МЧС",
    type: BottomBarEnum.tf,
  )
];

List<String> appBarTitle = [
"Новости", "Медицинская помощь", "Полиция", "МЧС",
];

final tabs = [NewsButtonPageWithoutBottomBar(), HoneyMainPage(), Center(child: Text("полиция",),), Center(child: Text("МЧС",),)];
GlobalKey<NavigatorState> navigatorKey = GlobalKey();



class _NewsButtonPageState extends State<NewsButtonPage> {
  Widget TopMenu(int index, String text){
    return GestureDetector(
        onTap: (){
          valueMenu=index;
          setState(() {
          });
        },
        child: Padding(
        padding: getPadding(
            left: 21,bottom: 1),
        child: Text("$text",
            overflow:
            TextOverflow
                .ellipsis,
            textAlign:
            TextAlign.left,
            style: valueMenu == index ? AppStyle
                .txtMontserratMedium15Blue600 : AppStyle
                .txtMontserratMedium15Bluegray800)));

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: tabs[widget.bottomBarIndex],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.black9003f,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(
                      0,
                      -1,
                    ),
                  ),
                ],
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: widget.bottomBarIndex,
                backgroundColor: Colors.transparent,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0,
                items: List.generate(
                  bottomMenuList.length,
                      (index) {
                    return BottomNavigationBarItem(
                      icon: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: bottomMenuList[index].icon,
                            height: getVerticalSize(
                              21,
                            ),
                            width: getHorizontalSize(
                              24,
                            ),
                            color: ColorConstant.gray400,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold9Gray400
                                  .copyWith(
                                color: ColorConstant.gray400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      activeIcon: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: bottomMenuList[index].icon,
                            height: getSize(
                              23,
                            ),
                            width: getSize(
                              23,
                            ),
                            color: ColorConstant.blue600,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold9.copyWith(
                                color: ColorConstant.blue600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      label: '',
                    );
                  },
                ),
                onTap: (index) {
                  setState(() {
                    widget.bottomBarIndex = index;
                  });
                },
              ),
            )));
  }

}
