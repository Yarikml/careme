import 'package:careme24/contact_page/widgets/avatar_with_name.dart';
import 'package:careme24/contact_page/widgets/contact_func_box.dart';
import 'package:careme24/contact_page/widgets/contact_info_box.dart';
import 'package:flutter/material.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

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
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AvatarWithNameWidget(
                avatarPath: 'assets/images/Avatar.png',
                contactName: 'Aram',
                old: '22',
                isMale: true,
              ),
              ContactInfoBox(
                phoneNumber: '+7 999 999 99 99',
                country: 'Russia',
                address: 'Pushkin Str',
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  ContactFuncBox(
                    color: Color(0xff2C3E4F),
                    imagePath: 'assets/images/portf.png',
                    title: 'Не админ',
                  ),
                  ContactFuncBox(
                    color: Color(0xff57738D),
                    imagePath: 'assets/images/Frame 8071.png',
                    title: 'Вкл.',
                  ),
                  ContactFuncBox(
                    color: Color(0xff8E969B),
                    imagePath: 'assets/images/Frame 8072.png',
                    title: 'Удалить',
                  ),
                ],
              ),
              SizedBox(height: 30,),
Row(
  children: [
    ContactFuncBox(
                    color: Color(0xff4380E9),
                    imagePath: 'assets/images/Frame 8065.png',
                    title: 'Звонок',
                  ),
                  ContactFuncBox(
                    color: Color(0xff52D86A),
                    imagePath: 'assets/images/Frame 8067.png',
                    title: 'WhatsApp',
                  ),
  ],
)
            ],
          ),
        ),
      ),
    );
  }
}
