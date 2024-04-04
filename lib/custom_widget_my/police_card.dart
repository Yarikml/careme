import 'package:careme24/custom_page_my/doctor_about_page.dart';
import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../custom_page_my/appointment_to_police_page.dart';
import '../custom_page_my/report_polic_textarea.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../widgets/custom_image_view.dart';

class PoliceCard extends StatelessWidget {
  late String doctor_image;
  late String doctor_name;
  late String doctor_qualification;
  late String cost;
  late String meters;
  late String minute;
  late String estimation;
  late String where_call;

  bool bottomInfo = false;
  bool leftColumnMeters = false;
  bool leftColumnEstimation = false;
  bool freeDates = false;
  bool ququalificationvisible = false;

  PoliceCard({
    required this.doctor_image,
    required this.doctor_name,
    required this.doctor_qualification,
    required this.cost,
    required this.meters,
    required this.minute,
    required this.estimation,
    required this.where_call,
  });

  void form_card() {
    if (where_call == "Сообщить") {
      AfterPay.changeAfterMinute();
      bottomInfo = true;
    } else if (where_call == "Заявление") {
      TipyHelp.changeHelp("С вами свяжутся по телефону или напишут в сообщениях");
      AfterPay.changeAfterSmile();
      bottomInfo = true;
      ququalificationvisible = true;
    } else if (where_call == "Юрист онлайн") {
      TipyHelp.changeHelp("Передите в чат с юристом");
      AfterPay.changeAfterSmile();
      leftColumnEstimation = true;
      freeDates = true;
      ququalificationvisible = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    form_card();
    return GestureDetector(
      onTap:(){
        if (where_call == "Юрист онлайн") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentToPoliceScreen()));
        } else  if (where_call == "Сообщить" || where_call == "Заявление") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ReportPoliceTextareaScreen(where_call, "Полиция")));
        } else {

        }
      },
      child: Card(
        margin: getMargin(bottom: 12),
        elevation: 8,
        clipBehavior: Clip.hardEdge,
        child: Container(
            width: MediaQuery.of(context).size.width-40,
            decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                width: 71,
                height: 109,
                decoration: BoxDecoration(
                  color: ColorConstant.indigoA100,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30)),
                ),
                child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.policehat,
                      ),
                    ])),
                  Padding(
                    padding: getPadding(top: 8, left: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width/1.6,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(doctor_name,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold15Blue600),
                                        Visibility(
                                          visible: ququalificationvisible,
                                          child: Padding(
                                              padding: getPadding(top: 4),
                                              child: Text(doctor_qualification,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                  AppStyle.txtMontserratMedium12)),
                                        ),

                                      ]),
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Column(
                                        children: [
                                          RichText(
                                              text: TextSpan(
                                                text: cost,
                                                style: TextStyle(
                                                    color:
                                                    ColorConstant.blueGray800,
                                                    fontSize: getFontSize(17),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              textAlign: TextAlign.left),
                                          Visibility(
                                            visible: leftColumnMeters,
                                            child: Text(meters,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium15Bluegray800),
                                          ),
                                          Visibility(
                                            visible: leftColumnEstimation,
                                            child: Row(
                                              children: [
                                                Text(estimation,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium15Bluegray800),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgStarGold,
                                                    height: getSize(12),
                                                    width: getSize(12),
                                                    margin: getMargin(
                                                        left: 3,
                                                        top: 3,
                                                        bottom: 3)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))
                                ]),
                          ),
                          Visibility(
                            visible: bottomInfo,
                            child: Padding(
                                padding: getPadding(top: 12),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(meters,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratMedium15Bluegray800),
                                      Padding(
                                          padding: getPadding(left: 26),
                                          child: Text(minute,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratMedium15Bluegray800)),
                                      Padding(
                                          padding: getPadding(left: 25),
                                          child: Text(estimation,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratMedium15Bluegray800)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgStarGold,
                                          height: getSize(12),
                                          width: getSize(12),
                                          margin: getMargin(
                                              left: 3, top: 3, bottom: 3)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getVerticalSize(11),
                                          width: getHorizontalSize(6),
                                          margin: getMargin(
                                              left: 30, top: 5, bottom: 2))
                                    ])),
                          ),
                          Visibility(
                            visible: freeDates,
                            child: Container(
                              width: MediaQuery.of(context).size.width - 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Свободные даты",
                                        style: AppStyle.txtMontserratMedium12Black900,),
                                      Padding(
                                        padding: getPadding(top: 2),
                                        child: Container(
                                          width: 128,
                                          child: Text("1 3 7 12 14 15 16 17 18",
                                            style: AppStyle.txtMontserratSemiBold15Blue600,
                                            overflow: TextOverflow.ellipsis,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: getVerticalSize(11),
                                      width: getHorizontalSize(6),
                                      margin: getMargin(top: 5, bottom: 2))
                                ],
                              ),
                            ),
                          )
                        ]),
                  )
                ])),
      ),
    );
  }
}
