import 'package:careme24/core/app_export.dart';
import 'package:careme24/custom_widget_my/information_main_icon.dart';
import 'package:careme24/presentation/news_button_page/news_button_page.dart';
import 'package:careme24/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../custom_page_my/main_page.dart';
import '../../custom_page_my/police_main_page.dart';
import '../../med_home_page.dart';
import '../../mes/mes_main_page.dart';

class HomeScreen extends StatefulWidget {
  final int text;
   HomeScreen(this.text) ;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _bottomBarIndex=0 ;

  List<String> appBarTitle = [
    "Новости", "Медицинская помощь", "Полиция", "МЧС",
  ];
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
  final tabs = [MainPage(), HoneyMainPage(), PoliceMainPage(), MESMainPage(),];
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    _bottomBarIndex=widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: tabs[_bottomBarIndex],
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
                currentIndex: _bottomBarIndex,
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
                    _bottomBarIndex = index;
                  });
                },
              ),
            )));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.newsButtonPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.newsButtonPage:
        return NewsButtonPage(bottomBarIndex: 0,);
      default:
        return DefaultWidget();
    }
  }

  onTapColumnseven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopScreen);
  }

  onTapStackframe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeTwoScreen);
  }

  onPolicePage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buttonCallPoliceScreen);
  }

  onMESPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buttonHoneyCallActivItemScreen);
  }

  onTapStackfourteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buttonHoneyCallOneScreen);
  }

  onTapRowsixteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newsButtonContainerScreen);
  }
}
