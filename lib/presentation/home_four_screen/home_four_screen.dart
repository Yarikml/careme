import 'dart:async';

import 'package:careme24/core/app_export.dart';
import 'package:careme24/presentation/news_button_page/news_button_page.dart';
import 'package:careme24/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomeFourScreen extends StatefulWidget {
  @override
  State<HomeFourScreen> createState() => _HomeFourScreenState();
}

class _HomeFourScreenState extends State<HomeFourScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {

    Timer(
      const Duration(seconds: 3),
          () {
            Navigator.pushNamed(context, AppRoutes.buttonHoneyCallOneScreen);

        print("ПЕРЕХОД!!!");
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.pinkHelp,
      body: SizedBox(

          child: CustomImageView(



            svgPath:
            ImageConstant
                .imgHelpScreen,alignment:Alignment.center ,)
      ),

    )
    ;
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

}
