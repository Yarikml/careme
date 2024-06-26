import 'package:careme24/core/app_export.dart';
import 'package:careme24/presentation/appointment_to_doctor_screen/widgets/date_container.dart';
import 'package:careme24/presentation/appointment_to_doctor_screen/widgets/time_container.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../presentation/more_time_to_record/record_details_page.dart';
import '../presentation/payment_defoult_screen/payment_defoult_screen.dart';

class AppointmentToPoliceScreen extends StatefulWidget {
  @override
  State<AppointmentToPoliceScreen> createState() =>
      _AppointmentToPoliceScreenState();
}

class _AppointmentToPoliceScreenState extends State<AppointmentToPoliceScreen> {
  int isSelectedIndex = -1;
  bool isSelectedTime = false;

  callBackTime(varTime) {
    setState(() {
      isSelectedTime = varTime;
      print(isSelectedTime);
    });
  }

  bool isRecordSelected() {
    return isSelectedTime == true && (isSelectedIndex != -1) ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.gray100,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          height: getVerticalSize(48),
          leadingWidth: 43,
          leading: AppbarImage(
              height: getVerticalSize(16),
              width: getHorizontalSize(11),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 15, right: 15, top: 15, bottom: 15),
              onTap: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
          title: AppbarTitle(text: "Юрист онлайн"),
          styleType: Style.bgFillBlue60001),
      body: Stack(

        children: [
          Container(
            height: MediaQuery.of(context).size.height-160,
            decoration: AppDecoration.outlineBlack9003f2.copyWith(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: AppDecoration.outlineBlack9003f2,
                  height: 173,
                  child: Row(
                    children: [
                      Container(
                          width: 100,
                          height: 173,
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
                        padding: getPadding(left: 18),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 140,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Шипупла Валерия",
                                    style: AppStyle.txtMontserratSemiBold18,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "Юристы, Составление документов",
                                    style:
                                        AppStyle.txtMontserratMedium15Blue600,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Оценка",
                                    style:
                                        AppStyle.txtMontserratRegular12Black900,
                                  ),
                                  Padding(
                                    padding: getPadding(left: 18),
                                    child: Text(
                                      "4.8",
                                      style: AppStyle
                                          .txtMontserratMedium15Black900,
                                    ),
                                  ),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgStarGold,
                                      height: getSize(12),
                                      width: getSize(12),
                                      margin: getMargin(
                                          left: 3, top: 3, bottom: 3)),
                                  Padding(
                                    padding: getPadding(left: 100),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(12),
                                        width: getSize(12),
                                        margin: getMargin(
                                            left: 3, top: 3, bottom: 3)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child:SingleChildScrollView(child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(top: 28, left: 24, bottom: 12),
                      child: Text(
                        "Дата записи",
                        style: AppStyle.txtMontserratSemiBold18Black900,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 86,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.all(8),
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isSelectedIndex == index) {
                                          isSelectedIndex = -1;
                                        } else {
                                          isSelectedIndex = index;
                                        }
                                      });
                                    },
                                    child: DateContainer(
                                      background: isSelectedIndex == index
                                          ? ColorConstant.bluebg
                                          : Colors.white,
                                      dayColor: isSelectedIndex == index
                                          ? AppStyle
                                              .txtMontserratSemiBold18WhiteA700
                                          : AppStyle
                                              .txtMontserratSemiBold18Black900,
                                      weekDayColor: isSelectedIndex == index
                                          ? AppStyle.txtMontserratMedium15WhiteA700
                                          : AppStyle.txtMontserratMedium15Blue600,
                                    ));
                              },
                              separatorBuilder: (BuildContext context, int index) =>
                                  Padding(padding: getPadding(left: 8, right: 8)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(top: 28, left: 24, bottom: 12),
                      child: Text(
                        "Время записи",
                        style: AppStyle.txtMontserratSemiBold18Black900,
                      ),
                    ),
                    Center(
                        child: TimeContainer(
                      timeCount: 20,
                      callback: callBackTime,
                    )),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 20, top: 14, right: 20),
                            child: OutlineGradientButton(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(1),
                                    top: getVerticalSize(1),
                                    right: getHorizontalSize(1),
                                    bottom: getVerticalSize(1)),
                                strokeWidth: getHorizontalSize(1),
                                gradient: LinearGradient(
                                    begin: Alignment(1.05, 0.11),
                                    end: Alignment(-0.02, 0.83),
                                    colors: [
                                      ColorConstant.blue600,
                                      ColorConstant.indigoA400
                                    ]),
                                corners: Corners(
                                    topLeft: Radius.circular(7),
                                    topRight: Radius.circular(7),
                                    bottomLeft: Radius.circular(7),
                                    bottomRight: Radius.circular(7)),
                                child: CustomButton(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RecordDetailsOneScreen()));
                                    },
                                    height: getVerticalSize(47),
                                    text: "Больше",
                                    variant: ButtonVariant.Outline,
                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle: ButtonFontStyle
                                        .MontserratRomanSemiBold15Blue,
                                    alignment: Alignment.center)))),
                  ],
                ))),

              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                if (isRecordSelected()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentDefoultScreen()));
                }
              },
              child: Container(
                margin: getMargin(bottom: 10),
                padding: getPadding(left: 50, right: 50,),
                width: MediaQuery.of(context).size.width - 40,
                height: 56,
                decoration: BoxDecoration(
                    gradient: isRecordSelected()
                        ? LinearGradient(
                      colors: [
                        ColorConstant.indigoA400,
                        ColorConstant.bluegradient,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    )
                        : LinearGradient(
                      colors: [
                        ColorConstant.gray50001,
                        ColorConstant.gray50001,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1450₽",
                          style: AppStyle.txtMontserratSemiBold18WhiteA700,
                        ),
                        Text(
                          "Записаться",
                          style: AppStyle.txtMontserratSemiBold18WhiteA700,
                        ),
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

/*onTap: () {
                  if (isRecordSelected()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentDefoultScreen()));
                  }
                },*/
