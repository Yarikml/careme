import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../custom_page_my/appointment_to_police_page.dart';
import '../custom_page_my/report_polic_textarea.dart';
import '../presentation/payment_defoult_screen/payment_defoult_screen.dart';
import '../presentation/record_final_screen/record_final_screen.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../widgets/custom_image_view.dart';

class MESCard extends StatelessWidget {
  late String mes_image;
  late String mes_name;
  late String mes_qualification;
  late String cost;
  late String meters;
  late String minute;
  late String estimation;
  late String where_call;

  bool bottomInfo = false;
  bool leftColumnMeters = false;
  bool leftColumnEstimation = false;
  bool freeDates = false;
  bool qualificationvisible = false;

  MESCard({
    required this.mes_image,
    required this.mes_name,
    required this.mes_qualification,
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
      TipyHelp.changeHelp("В течение дня с вами свяжутся по телефону или напишут в сообщениях");
      AfterPay.changeAfterSmile();
      bottomInfo = true;
    } else if (where_call == "Помощь онлайн") {
      TipyHelp.changeHelp("Предите в чат, что бы получить помощь");
      AfterPay.changeAfterSmile();
      bottomInfo = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    form_card();
    return GestureDetector(
      onTap:(){
        if (where_call == "Помощь онлайн") {
          if(VersionConstant
              .isPaidSubscription){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PaymentDefoultScreen()));
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        RecordFinalScreen()));
          }
        } else  if (where_call == "Сообщить" || where_call == "Заявление") {
        //  Navigator.push(context, MaterialPageRoute(builder: (context) => ReportPoliceTextareaScreen(where_call, "МЧС")));
        } else {

        }
      },
      child: Card(
        margin: getMargin(bottom: 12),
        elevation: 8,
        clipBehavior: Clip.hardEdge,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),),
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
                        color: ColorConstant.yellow700,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30)),
                      ),
                      child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.fireSmallIcon,
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
                                        Container(
                                          width: MediaQuery.of(context).size.width/2.5,
                                          child: Text(mes_name,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold15Blue600),
                                        ),
                                        Visibility(
                                          visible: qualificationvisible,
                                          child: Padding(
                                              padding: getPadding(top: 4),
                                              child: Text(mes_qualification,
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
