import 'package:careme24/mediacl_card/widgets/big_avatar_widget.dart';
import 'package:careme24/mediacl_card/widgets/certificates_and_sick_widget.dart';
import 'package:careme24/mediacl_card/widgets/doctor_report_widget.dart';
import 'package:careme24/mediacl_card/widgets/medical_data_widget.dart';
import 'package:careme24/mediacl_card/widgets/personal_info_widget.dart';
import 'package:careme24/mediacl_card/widgets/test_results.dart';
import 'package:flutter/material.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';

class MedicalCardPage extends StatelessWidget {
  const MedicalCardPage({Key? key}) : super(key: key);

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
            text: "Мед карта",
          ),
          styleType: Style.bgFillBlue60001,
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(23, 20, 23, 0),
          height: double.maxFinite,
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                BigAvatarWidget(
                  avatarPath: 'assets/images/Avatar.png',
                ),
                SizedBox(
                  height: 23,
                ),
                PersonalInfoWidget(
                  userName: 'Aram Balayan',
                  phoneNumber: '+7-952-943-43-88',
                ),
                SizedBox(
                  height: 23,
                ),
                MedicalDataWidget(
                  bloodType: 0,
                  numberPolice: '135 689 ...',
                ),
                SizedBox(
                  height: 23,
                ),
                DoctorReportWidget(
                  neurologistDate: '13.04.2023',
                  therapistDate: '22.02.2023',
                ),
                SizedBox(
                  height: 23,
                ),
                TestResultWidget(
                  restultBlood: '22.02.2023',
                  resultUrine: '13.04.2023',
                ),
                SizedBox(
                  height: 23,
                ),
                CerificatesAnfSickWidget(
                  date: '22.02.2023',
                  date2: '13.04.2023',
                ),
                SizedBox(
                  height: 23,
                ),
              ],
            ),
          ),
        ));
  }
}
