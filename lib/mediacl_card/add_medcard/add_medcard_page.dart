
import 'dart:io';

import 'package:careme24/mediacl_card/widgets/certificates_and_sick_widget.dart';
import 'package:careme24/mediacl_card/widgets/doctor_report_widget.dart';
import 'package:careme24/mediacl_card/widgets/medical_data_widget.dart';
import 'package:careme24/mediacl_card/widgets/personal_info_widget.dart';
import 'package:careme24/mediacl_card/widgets/test_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'components/source_bottomsheet.dart';

class AddMedcardPage extends StatefulWidget {
  const AddMedcardPage({Key? key}) : super(key: key);

  @override
  State<AddMedcardPage> createState() => _AddMedcardPageState();
}

class _AddMedcardPageState extends State<AddMedcardPage> {
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
                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    height: 106,
                    width: 106,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffC3C3C3),
                    ),
                    child: true
                        ? Container(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/icon-plus.png',
                        fit: BoxFit.cover,
                      ),
                    )
                        : ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.file(
                          '' as File,
                          fit: BoxFit.fill,
                        )),
                  ),
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

Future<dynamic> showImageSourceBottomSheet(
    BuildContext context, VoidCallback firstTap, VoidCallback secondTap) async {
  return await showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 0,
    isScrollControlled: true,
    builder: (context) {
      return SourceBottomsheet(
        firstTap: firstTap,
        secondTap: secondTap,
      );
    },
  );
}
