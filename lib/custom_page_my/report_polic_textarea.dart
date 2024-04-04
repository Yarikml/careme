import 'dart:io';

import 'package:careme24/custom_page_my/file_catalog_page.dart';
import 'package:careme24/presentation/news_button_page/news_button_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:media_picker_widget/media_picker_widget.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:permission_handler/permission_handler.dart';
import '../core/constants/constants.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../custom_camera_screen.dart';
import '../presentation/call_waiting_window_screen/call_waiting_window_screen.dart';
import '../presentation/payment_defoult_screen/payment_defoult_screen.dart';
import '../presentation/record_final_screen/record_final_screen.dart';
import '../theme/app_style.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_button.dart';


class ReportPoliceTextareaScreen extends StatefulWidget {


  @override
  State<ReportPoliceTextareaScreen> createState() =>
      _ReportPoliceTextareaScreenState();
  late String appBarTitle;
  late String whereCall;

  ReportPoliceTextareaScreen(this.appBarTitle, this.whereCall);
}

class _ReportPoliceTextareaScreenState
    extends State<ReportPoliceTextareaScreen> {
  double heightTextField = 162;
  String textButton = "Читать дальше";
  int maxTextLine = 9;
  List<Media> mediaList = [];
  int _indexSelect = -1;
  List<String> _isFileSelect =[];

  TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                title: AppbarTitle(text: widget.appBarTitle),
                styleType: Style.bgFillBlue60001),
            backgroundColor: ColorConstant.whiteA700,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                      width: double.maxFinite,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Visibility(
                              visible: VersionConstant.isPaidSubscription,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 23, top: 21),
                                      child: Text("Сумма к оплате",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRomanSemiBold15)),
                                  Padding(
                                      padding: getPadding(left: 23, top: 5),
                                      child: Text("1500 ₽",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtMontserratBold26Black)),
                                ],
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 23, top: 18, right: 23, bottom: 5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(202),
                                              child: Text(
                                                  "Опишите подробнее ситуацию",
                                                  maxLines: null,
                                                  overflow: TextOverflow.clip,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtH1)),
                                          Container(
                                            height:
                                                MediaQuery.of(context).size.height /
                                                    4,
                                            width:
                                                MediaQuery.of(context).size.width -
                                                    40,
                                            margin: getMargin(top: 12),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius: BorderRadius.circular(
                                                    getHorizontalSize(10)),
                                                border: Border.all(
                                                    color: ColorConstant.gray50001,
                                                    width: getHorizontalSize(1))),
                                            child: Container(
                                              padding:
                                                  getPadding(left: 10, right: 10),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  40,
                                              child: TextField(
                                                  textAlign: TextAlign.left,
                                                  //maxLines: null,
                                                  //expands: true,
                                                  maxLines: 5,
                                                  textCapitalization:
                                                      TextCapitalization.sentences,
                                                  style: TextStyle(
                                                    color: ColorConstant.black900,
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                  controller: _commentController,
                                                  decoration: InputDecoration(
                                                    focusedBorder: InputBorder.none,
                                                    enabledBorder: InputBorder.none,
                                                  )),
                                            ),
                                          ),
                                         Visibility(
                                             visible: widget.appBarTitle ==
                                                 "Заявление" &&
                                                 widget.whereCall == "Полиция"
                                                 ? false
                                                 : true,
                                             child: Padding(
                                              padding: getPadding(top: 18),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceAround,
                                                  children: [
                                                    OutlineGradientButton(
                                                        padding: EdgeInsets.only(
                                                            left: getHorizontalSize(
                                                                1),
                                                            top: getVerticalSize(1),
                                                            right: getHorizontalSize(
                                                                1),
                                                            bottom:
                                                                getVerticalSize(1)),
                                                        strokeWidth:
                                                            getHorizontalSize(1),
                                                        gradient:
                                                            LinearGradient(begin: Alignment(1.05, 0.11), end: Alignment(-0.02, 0.83), colors: [
                                                          ColorConstant.blue600,
                                                          ColorConstant.indigoA400
                                                        ]),
                                                        corners: Corners(
                                                            topLeft:
                                                                Radius.circular(10),
                                                            topRight:
                                                                Radius.circular(10),
                                                            bottomLeft:
                                                                Radius.circular(10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10)),
                                                        child: CustomButton(
                                                            height: getVerticalSize(56),
                                                            width: MediaQuery.of(context).size.width / 2 - 30,
                                                            text: "Пропустить",
                                                            variant: ButtonVariant.Outline,
                                                            onTap: () {})),
                                                    GestureDetector(
                                                      onTap: () {
                                                        if (_commentController
                                                            .text.isNotEmpty) {
                                                          if (VersionConstant
                                                              .isPaidSubscription) {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            PaymentDefoultScreen()));
                                                          } else {
                                                            if (AfterPay
                                                                    .whereCall ==
                                                                "Минуты") {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              CallWaitingWindowScreen()));
                                                            } else {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              RecordFinalScreen()));
                                                            }
                                                          }
                                                        }
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.of(context)
                                                                        .size
                                                                        .width /
                                                                    2 -
                                                                30,
                                                        height: 56,
                                                        decoration: BoxDecoration(
                                                            gradient:
                                                                _commentController
                                                                        .text
                                                                        .isNotEmpty
                                                                    ? LinearGradient(
                                                                        colors: [
                                                                          ColorConstant
                                                                              .indigoA400,
                                                                          ColorConstant
                                                                              .bluegradient,
                                                                        ],
                                                                        begin: Alignment
                                                                            .bottomLeft,
                                                                        end: Alignment
                                                                            .topRight,
                                                                      )
                                                                    : LinearGradient(
                                                                        colors: [
                                                                          ColorConstant
                                                                              .gray50001,
                                                                          ColorConstant
                                                                              .gray50001,
                                                                        ],
                                                                        begin: Alignment
                                                                            .bottomLeft,
                                                                        end: Alignment
                                                                            .topRight,
                                                                      ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(10)),
                                                        child: Center(
                                                            child: Text(
                                                          "Сообщить",
                                                          style: AppStyle
                                                              .txtMontserratSemiBold18WhiteA700,
                                                        )),
                                                      ),
                                                    ),
                                                  ]))),
                                          Visibility(
                                            visible: widget.appBarTitle ==
                                                        "Заявление" &&
                                                    widget.whereCall == "Полиция"
                                                ? true
                                                : false,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: getPadding(top: 18),
                                                  child: Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width -
                                                        40,
                                                    child: Text(
                                                      "Пример заявления",
                                                      style: AppStyle.txtH1,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(top: 18),
                                                  child: Container(
                                                    child: Text(
                                                      "Прошу зарегистрировать мое заявление о преступлении и возбудить уголовное дело по признакам преступления, предусмотренного ч. 1 ст. 158 УК РФ (кража). В соответствии с требованиями ч. 2 ст. 145 УПК РФ о принятом решении прошу мне (заявителю) сообщить. В период с 25 ноября по 24 декабря 2001 года включительно с телефона 0872312486, расположенного по адресу: г. Энск, ул. Тургеневская, д. 69, неустановленным лицом тайно у меня было похищено оплаченное мной время работы в сети Интернет на общую сумму 515 рублей 40 копеек (17,18 у.е., из расчета 1 у.е. = 30 руб.). В ходе совершения данного продолжаемого преступления, скорее всего, тот же человек с 23 час. 09 мин. 9 декабря 2001 года по 00 час. 41 мин. 10 декабря 2001 года, находясь в г. Алексине Энской области, с телефона 0875343694 тайно похитил у меня оплаченное мной время работы в сети Интернет на сумму 40 руб. 50 коп. (1,35 у.е.). Таким образом, у меня было похищено принадлежащее мне время работы в сети Интернет на общую сумму 555 руб. 90 коп. Об ответственности за заведомо ложный донос мне известно.",
                                                      style: AppStyle
                                                          .txtMontserratMedium15Black900,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: maxTextLine,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(top: 18),
                                                  child: OutlineGradientButton(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(1),
                                                          top: getVerticalSize(1),
                                                          right:
                                                              getHorizontalSize(1),
                                                          bottom:
                                                              getVerticalSize(1)),
                                                      strokeWidth:
                                                          getHorizontalSize(1),
                                                      gradient: LinearGradient(
                                                          begin:
                                                              Alignment(1.05, 0.11),
                                                          end: Alignment(
                                                              -0.02, 0.83),
                                                          colors: [
                                                            ColorConstant.blue600,
                                                            ColorConstant.indigoA400
                                                          ]),
                                                      corners: Corners(
                                                          topLeft:
                                                              Radius.circular(10),
                                                          topRight:
                                                              Radius.circular(10),
                                                          bottomLeft:
                                                              Radius.circular(10),
                                                          bottomRight:
                                                              Radius.circular(10)),
                                                      child: CustomButton(
                                                        height: getVerticalSize(56),
                                                        width:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .width -
                                                                40,
                                                        text: textButton,
                                                        variant:
                                                            ButtonVariant.Outline,
                                                        onTap: () {
                                                          setState(() {
                                                            if (heightTextField ==
                                                                162) {
                                                              heightTextField = 573;
                                                              textButton =
                                                                  "Свернуть";
                                                              maxTextLine = 1000;
                                                            } else {
                                                              heightTextField = 162;
                                                              textButton =
                                                                  "Читать дальше";
                                                              maxTextLine = 9;
                                                            }
                                                          });
                                                        },
                                                      )),
                                                ),
                                                Padding(
                                                  padding: getPadding(top: 18),
                                                  child: Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width -
                                                          40,
                                                      child: Text(
                                                          "Прикрепите факты которые могут доказать преступление",
                                                          maxLines: null,
                                                          overflow:
                                                              TextOverflow.clip,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtH1)),
                                                ),
                                                Padding(
                                                  padding: getPadding(top: 18,bottom: 16),
                                                  child: Container(
                                                    child: Text(
                                                      "Это может быть текстовый документ или изображение",
                                                      style: AppStyle
                                                          .txtMontserratMedium15,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: maxTextLine,
                                                    ),
                                                  ),
                                                ),
                                              SingleChildScrollView(
                                                  scrollDirection: Axis.horizontal,
                                                  child:Container(
                                                      //width: MediaQuery.of(context).size.width-40,
                                                      child:  Row(
                                                children: [DottedBorder(
                                                  borderType: BorderType.RRect,
                                                  radius: Radius.circular(10),
                                                  dashPattern: [10, 10],
                                                  color: Colors.grey,
                                                  strokeWidth: 1,

                                                  child:GestureDetector(
                                                    onTap: (){ getPermissionStatus();
                                                      /*Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                  FileCatalogPage()));*/
                                                      showModalBottomSheet(context: context,
                                                          builder: (context)
                                                          {

                                                          return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState)
                                                          {   return Container(
                                                            padding: const EdgeInsets.only(top: 18),
                                                            decoration: BoxDecoration(
                                                              color: ColorConstant.whiteA70000,
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                Container(height: 50,
                                                                  width: MediaQuery.of(context).size.width,
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      GestureDetector(
                                                                          onTap: (){
                                                                            //_isVisibleFilePicker= false;
                                                                            setState(() {

                                                                            });
                                                                            Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                    builder: (context) => CustomCameraScreen()));},
                                                                          child: Container(
                                                                            decoration: BoxDecoration(
                                                                              color: Colors.blue,
                                                                              borderRadius: BorderRadius.circular(10),
                                                                            ),
                                                                            padding: getPadding(left: 10,right:10 ),

                                                                            height: 40,
                                                                            width: MediaQuery.of(context).size.width/2 - 20,
                                                                            child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Icon(Icons.camera_alt, color: Colors.white,),
                                                                                Text('Камера',
                                                                                  style :TextStyle(
                                                                                    fontSize: 14,
                                                                                    color: Colors.white,
                                                                                    fontFamily: 'Montserrat',
                                                                                    fontWeight: FontWeight.w200,
                                                                                  ),),],),)),
                                                                      SizedBox(width: 10,),
                                                                      GestureDetector(
                                                                          onTap: (){
                                                                            Navigator.pop(context);
                                                                            openImagePicker(context);

                                                                            //_isVisibleFilePicker=false;
                                                                            setState(() {

                                                                            });},
                                                                          child:Container(
                                                                            decoration: BoxDecoration(
                                                                              color: Colors.blue,
                                                                              borderRadius: BorderRadius.circular(10),
                                                                            ),
                                                                            padding: getPadding(left: 10,right:10 ),

                                                                            height: 40,
                                                                            width: MediaQuery.of(context).size.width/2 - 20,
                                                                            child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Icon(Icons.image, color: Colors.white,),
                                                                                Text('Галерея',
                                                                                  style :TextStyle(
                                                                                    fontSize: 14,
                                                                                    color: Colors.white,
                                                                                    fontFamily: 'Montserrat',
                                                                                    fontWeight: FontWeight.w200,
                                                                                  ),),],),)),


                                                                    ],),),
                                                                Divider(thickness: 2,),
                                                                Container(height: 20,
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                    children: [GestureDetector(
                                                                        onTap:(){
                                                                          _indexSelect = 1;
                                                                          setState(() {

                                                                          });
                                                                        },
                                                                        child: Text('Все',  style :TextStyle(
                                                                          fontSize: 14,
                                                                          color:   _indexSelect == 1?Colors.blue:Colors.black,
                                                                          fontFamily: 'Montserrat',
                                                                          fontWeight: FontWeight.w200,
                                                                        ))),
                                                                      GestureDetector(
                                                                          onTap:(){
                                                                            _indexSelect = 2;
                                                                            setState(() {

                                                                            });
                                                                          },
                                                                          child: Text('Фото',  style :TextStyle(
                                                                            fontSize: 14,
                                                                            color:   _indexSelect == 2?Colors.blue:Colors.black,
                                                                            fontFamily: 'Montserrat',
                                                                            fontWeight: FontWeight.w200,
                                                                          ))),
                                                                      GestureDetector(
                                                                          onTap:(){
                                                                            _indexSelect =3;
                                                                            setState(() {

                                                                            });
                                                                          },
                                                                          child: Text('Видео',  style :TextStyle(
                                                                            fontSize: 14,
                                                                            color:   _indexSelect == 3?Colors.blue:Colors.black,
                                                                            fontFamily: 'Montserrat',
                                                                            fontWeight: FontWeight.w200,
                                                                          ))),
                                                                      GestureDetector(
                                                                          onTap:(){
                                                                            _indexSelect = 4;
                                                                            setState(() {

                                                                            });
                                                                          },
                                                                          child: Text('Текстовые',  style :TextStyle(
                                                                            fontSize: 14,
                                                                            color:   _indexSelect == 4?Colors.blue:Colors.black,
                                                                            fontFamily: 'Montserrat',
                                                                            fontWeight: FontWeight.w200,
                                                                          ))),],),
                                                                ),
                                                                Divider(thickness: 2,),
                                                                Expanded( child: Container(
                                                                  //height: MediaQuery.of(context).size.height/4,
                                                                    child: filesss(context))),
                                                               Padding(
                                                                   padding: getPadding(right: 4),
                                                                   child:GestureDetector(
                                                                   onTap: (){
Navigator.pop(context);

                                                                   },
                                                                   child:Container(
                                                                  margin: getMargin(top: 18,bottom: 8),
                                                                  width: MediaQuery.of(context)
                                                                      .size
                                                                      .width -
                                                                      40,
                                                                  height: 56,
                                                                  decoration: BoxDecoration(
                                                                      gradient:
                                                                      LinearGradient(
                                                                        colors: [
                                                                          ColorConstant
                                                                              .indigoA400,
                                                                          ColorConstant
                                                                              .bluegradient,
                                                                        ],
                                                                        begin: Alignment
                                                                            .bottomLeft,
                                                                        end: Alignment
                                                                            .topRight,
                                                                      ),
                                                                 /*     _isFileSelect
                                                                          .isNotEmpty
                                                                          ? LinearGradient(
                                                                        colors: [
                                                                          ColorConstant
                                                                              .indigoA400,
                                                                          ColorConstant
                                                                              .bluegradient,
                                                                        ],
                                                                        begin: Alignment
                                                                            .bottomLeft,
                                                                        end: Alignment
                                                                            .topRight,
                                                                      )
                                                                          : LinearGradient(
                                                                        colors: [
                                                                          ColorConstant
                                                                              .gray50001,
                                                                          ColorConstant
                                                                              .gray50001,
                                                                        ],
                                                                        begin: Alignment
                                                                            .bottomLeft,
                                                                        end: Alignment
                                                                            .topRight,
                                                                      ),*/
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          10)),
                                                                  child: Center(
                                                                      child: Text(
                                                                       /* _isFileSelect
                                                                            .isNotEmpty? "Добавить" :'Отменить',*/
                                                                        "Добавить",
                                                                        style: AppStyle
                                                                            .txtMontserratSemiBold18WhiteA700,
                                                                      )),
                                                                )))
                                                              ],
                                                            ),
                                                          ); },);

                                                          });

                                                    },
                                                    child: Container(

                                                      height: 90,
                                                      width: 90,
                                                      child: Icon(Icons.description,color: Colors.grey.shade300, size: 40,),

                                                    ),


                                                  ),
                                                ),
                                                  previewList(), _isFileSelect.isEmpty ? SizedBox():previewListFiles()
                                                ],

                                                ))),


                                                GestureDetector(
                                                    onTap: () {
                                                      if (_commentController
                                                          .text.isNotEmpty) {
                                                        if (VersionConstant
                                                            .isPaidSubscription) {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      PaymentDefoultScreen()));
                                                        } else {
                                                          if (AfterPay.whereCall ==
                                                              "Минуты") {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            CallWaitingWindowScreen()));
                                                          } else {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            RecordFinalScreen()));
                                                          }
                                                        }
                                                      }
                                                    },
                                                    child: Container(
                                                      margin: getMargin(top: 18),
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width -
                                                          40,
                                                      height: 56,
                                                      decoration: BoxDecoration(
                                                          gradient:
                                                              _commentController
                                                                      .text
                                                                      .isNotEmpty
                                                                  ? LinearGradient(
                                                                      colors: [
                                                                        ColorConstant
                                                                            .indigoA400,
                                                                        ColorConstant
                                                                            .bluegradient,
                                                                      ],
                                                                      begin: Alignment
                                                                          .bottomLeft,
                                                                      end: Alignment
                                                                          .topRight,
                                                                    )
                                                                  : LinearGradient(
                                                                      colors: [
                                                                        ColorConstant
                                                                            .gray50001,
                                                                        ColorConstant
                                                                            .gray50001,
                                                                      ],
                                                                      begin: Alignment
                                                                          .bottomLeft,
                                                                      end: Alignment
                                                                          .topRight,
                                                                    ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  10)),
                                                      child: Center(
                                                          child: Text(
                                                        "Отправить",
                                                        style: AppStyle
                                                            .txtMontserratSemiBold18WhiteA700,
                                                      )),
                                                    )),
                                              ],
                                            ),
                                          )
                                        ])))
                          ])),
                ),

              ],
            )));
  }
  Widget filesss(BuildContext context) {
    late var refreshGridView;
    final Directory directory = new Directory(
        '/storage/emulated/0/Download');

    var imageList = directory
        .listSync()
        .map((item) => item.path)

        .toList(growable: false);
    return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState)
    {
      return ListView.separated(
          shrinkWrap: true,
          itemCount: imageList.length,

          itemBuilder: (context, index) {
            File file = new File(imageList[index]);
            String name = file.path.split('/').last;
            return GestureDetector(
                onTap: (){
                  if (_isFileSelect.toString().contains(name))
                  {_isFileSelect.remove(name);}
                  else {
                    _isFileSelect.add(name);
                  }
                  setState(() {

                  });},
                child:Padding(
                  padding: new EdgeInsets.all(8.0),
                  child:Row(


                    children: [
                      Icon(Icons.file_present, color: Colors.grey.shade400,
                        size: 30 ,),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Text(name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color:  Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),)),
                          Text('30 Mb', style: TextStyle(
                            fontSize: 12,
                            color:  Colors.grey.shade400,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ))
                        ],
                      ),
                      Spacer(),
                      Container(

                        height: 15, width: 15,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                100),
                            color: _isFileSelect.toString().contains(name)  ?Colors.blue: ColorConstant.whiteA700
                        ),), SizedBox(width: 15,)
                    ],
                  ),
                ));
          },
          separatorBuilder:
              (BuildContext context, int index) =>
          const Divider(indent: 0, height: 1)
      );

    },);
  }
  void openImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            //  height: MediaQuery.of(context).size.height,
            child:Column(
              children: [
                Container(height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomCameraScreen()));
                          },
                          child:Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: getPadding(left: 10,right:10 ),

                            height: 40,
                            width: MediaQuery.of(context).size.width/2 - 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt, color: Colors.white,),
                                Text('Камера',
                                  style :TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                  ),),],),)),
                      SizedBox(width: 10,),
                      GestureDetector(

                          onTap: (){//_isVisibleFilePicker=true;
                          Navigator.pop(context);

                          setState(() {

                          });},
                          child:Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: getPadding(left: 10,right:10 ),

                            height: 40,
                            width: MediaQuery.of(context).size.width/2 - 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.description, color: Colors.white,),
                                Text('Документы',
                                  style :TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                  ),),],),)),


                    ],),),
                Expanded(child:Container(
                  // height: MediaQuery.of(context).size.height/2,
                    child:MediaPicker(

                      mediaList: mediaList,
                      onPicked: (selectedList) {


                        setState(() => mediaList = selectedList);
                        Navigator.pop(context);
                      },
                      onCancel: () {

                        Navigator.pop(context);
                      },
                      mediaCount: MediaCount.multiple,
                      mediaType: MediaType.all,
                      decoration: PickerDecoration(
                        albumCountTextStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w200,
                        ),
                        albumTextStyle: TextStyle(
                          fontSize: 14,
                          color:  Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w200,
                        ),
                        completeTextStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w200,
                        ),
                        completeText: 'Продолжить',
                        blurStrength: 0,
                        scaleAmount: 1,
                        counterBuilder: (context, index){
                          if(index==null) return const SizedBox();
                          return Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(4),
                              child: Text(
                                '$index',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ))),
              ],
            ));
      },
    );
  }
  Widget previewList() {
    return SizedBox(
      height: 96,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(
            mediaList.length,
                (index) => Padding(
              padding: const EdgeInsets.only(left: 4,right: 4),
              child: GestureDetector(
                  onTap: (){mediaList.remove(mediaList[index]);
                  setState(() {

                  });},
                  child:Card(
                      shape: RoundedRectangleBorder(
                        //side:  BorderSide(color: Colors.green,width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Container( height: 90,
                        width: 90,
                        child: mediaList[index].thumbnail==null ? const SizedBox() : Image.memory(
                          mediaList[index].thumbnail!,
                          fit: BoxFit.cover,
                        ),)
                  )),
            )),
      ),
    );
  }


  Widget previewListFiles() {
    return SizedBox(
      height: 96,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(
            _isFileSelect.length,
                (index) => Padding(
              padding: const EdgeInsets.only(left: 4,right: 4),
              child: GestureDetector(
                  onTap: (){_isFileSelect.remove(_isFileSelect[index]);
                  setState(() {

                  });},
                  child:Card(
                      shape: RoundedRectangleBorder(
                        //side:  BorderSide(color: Colors.green,width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Container( height: 90,
                        width: 90,
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.description, color: Colors.white,),
                              Text(_isFileSelect[index], style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w200,
                              ),
                              overflow: TextOverflow.ellipsis,),


                            ],

                          ),
                        ))
                  )),
            )),
      ),
    );
  }

  getPermissionStatus() async {
    await Permission.storage.request();
    var status = await Permission.storage.status;

    if (status.isGranted) {
      print('Camera Permission: GRANTED');
      setState(() {
       // _isCameraPermissionGranted = true;
      });
      // Set and initialize the new camera

    } else {
      print('Camera Permission: DENIED');
    }
  }

}
