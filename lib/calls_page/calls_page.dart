import 'package:careme24/calls_page/state_managers/cubit.dart';
import 'package:careme24/calls_page/widgets/calls_swith.dart';
import 'package:careme24/calls_page/widgets/contact_widget.dart';
import 'package:careme24/calls_page/widgets/extrenal_calls_row.dart';
import 'package:careme24/calls_page/widgets/no_contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../contact_page/contact_page.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  SwitchCubit cubit = SwitchCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: getVerticalSize(48),
          leadingWidth: 43,
          leading: AppbarImage(
              height: getVerticalSize(16),
              width: getHorizontalSize(11),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 15, top: 15, bottom: 15),
              onTap: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
          title: AppbarTitle(
            text: "Вызов",
          ),
          styleType: Style.bgFillBlue60001,
          actions: [Image.asset('assets/images/add_contact.png')],
        ),
        body: BlocProvider(
          create: (context) => cubit,
          child: Container(
            margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
            height: double.maxFinite,
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CallsSwith(),
                  ExtrenalCallsWidget(),
                  Padding(
                    padding: const EdgeInsets.only(top: 36, bottom: 15),
                    child: Text(
                      'Приглашенные',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2c3e4f),
                      ),
                    ),
                  ),
                  ContactWidget(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactPage()));
                    },
                    imagePath: 'assets/images/Avatar.png',
                    userName: 'Aram Balayan',
                    phoneNumber: '+7 999 999 99 99',
                  ),
                  ContactWidget(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactPage()));
                    },
                    imagePath: 'assets/images/Avatar.png',
                    userName: 'Andrey Sergeev',
                    phoneNumber: '+7 999 999 99 99',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 36, bottom: 15),
                    child: Text(
                      'Администраторы',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2c3e4f),
                      ),
                    ),
                  ),
                  ContactWidget(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactPage()));
                    },
                    imagePath: 'assets/images/Avatar.png',
                    userName: 'Aram Balayan',
                    phoneNumber: '+7 999 999 99 99',
                  ),
                  ContactWidget(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactPage()));
                    },
                    imagePath: 'assets/images/Avatar.png',
                    userName: 'Andrey Sergeev',
                    phoneNumber: '+7 999 999 99 99',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 36, bottom: 15),
                    child: Text(
                      'Активные',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2c3e4f),
                      ),
                    ),
                  ),
                  NoContactWidget()
                ],
              ),
            ),
          ),
        ));
  }
}
