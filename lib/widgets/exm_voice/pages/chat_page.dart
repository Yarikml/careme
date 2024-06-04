/*
import 'dart:io';

import 'package:careme24/custom_camera_screen.dart';
import 'package:flutter/material.dart';
//import 'package:media_picker_widget/media_picker_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_recorder/audio_encoder_type.dart';
import 'package:social_media_recorder/screen/social_media_recorder.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../app_bar/appbar_image.dart';
import '../../app_bar/appbar_subtitle_2.dart';
import '../../app_bar/custom_app_bar.dart';
import '../../custom_button.dart';
import '../../custom_image_view.dart';
import '../helpers/constants.dart';
import '../helpers/style.dart';
import '../helpers/widgets.dart';
import '../widgets/bubble.dart';

bool _isOnline = true;
bool _isVisible = true;
bool _isSelectMedia = false;
bool _isFilePicker = false;
bool _isFileSelect = false;
bool _isChatOpen = true;

int _indexSelect = -1;

class MyAppChat extends StatefulWidget {
  const MyAppChat({Key? key}) : super(key: key);

  @override
  State<MyAppChat> createState() => _MyAppChatState();
}

class _MyAppChatState extends State<MyAppChat> {
  @override
  Widget build(BuildContext context) => Sizer(
        builder: (_, __, ___) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ChatPage(),
        ),
      );
}

// ignore: must_be_immutable
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Media> mediaList = [];
  Widget previewList() {
    return SizedBox(
      height: 96,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(
            mediaList.length,
            (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        mediaList.remove(mediaList[index]);
                        setState(() {});
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                              //side:  BorderSide(color: Colors.green,width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            height: 80,
                            width: 80,
                            child: mediaList[index].thumbnail == null
                                ? const SizedBox()
                                : Image.memory(
                                    mediaList[index].thumbnail!,
                                    fit: BoxFit.cover,
                                  ),
                          ))),
                )),
      ),
    );
  }

  void openImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            //  height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(*/
/**//*

                                    builder: (context) =>
                                        CustomCameraScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: getPadding(left: 10, right: 10),
                            height: 40,
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Камера',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            _isFilePicker = true;
                            Navigator.pop(context);
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: getPadding(left: 10, right: 10),
                            height: 40,
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.description,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Документы',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                        // height: MediaQuery.of(context).size.height/2,
                        child: MediaPicker(
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
                      color: Colors.black,
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
                    counterBuilder: (context, index) {
                      if (index == null) return const SizedBox();
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

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
            height: getVerticalSize(69),
            leadingWidth: 39,
            leading: AppbarImage(
                height: getVerticalSize(16),
                width: getHorizontalSize(11),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 15, right: 15, top: 15, bottom: 15),
                onTap: () {
                  Navigator.pop(context);
                }),
            title: Padding(
                padding: getPadding(left: 8),
                child: Row(children: [
                  Container(
                    padding: getPadding(bottom: 8),
                    height: 50,
                    width: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)
                            //more than 50% of width makes circle
                            ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: CircleAvatar(
                        radius: 15,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgRectangle2626),
                      ),
                    ),
                  ),
                  Padding(
                      padding: getPadding(left: 10, bottom: 1),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppbarSubtitle2(
                              text: "Лор",
                            ),
                            AppbarSubtitle2(text: "Иванов Алексей"),
                            Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: _isOnline
                                    ? Row(children: [
                                        AppbarSubtitle2(text: "В сети"),
                                        Container(
                                            height: getSize(8),
                                            width: getSize(8),
                                            margin: getMargin(
                                                left: 5, top: 3, bottom: 3),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(4)),
                                                border: Border.all(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    width:
                                                        getHorizontalSize(1))))
                                      ])
                                    : Row(children: [
                                        AppbarSubtitle2(text: "Не в сети"),
                                        Container(
                                            height: getSize(8),
                                            width: getSize(8),
                                            margin: getMargin(
                                                left: 5, top: 3, bottom: 3),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(4)),
                                                border: Border.all(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    width:
                                                        getHorizontalSize(1))))
                                      ]))
                          ]))
                ])),
            styleType: Style.bgFillBlue60001),
        body: _isChatOpen
            ? _messagesWithUserInfo(context)
            : Container(
                width: double.maxFinite,
                padding: getPadding(top: 12, bottom: 12),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                      padding: getPadding(top: 143),
                      child: Text("Чат откроется через:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: getFontSize(
                              22,
                            ),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ))),
                  Padding(
                      padding: getPadding(top: 16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("День",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Container(
                                          width: getHorizontalSize(61),
                                          margin: getMargin(top: 5),
                                          padding: getPadding(
                                              left: 26,
                                              top: 20,
                                              right: 26,
                                              bottom: 20),
                                          decoration: AppDecoration
                                              .txtOutlineBlue30001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder10),
                                          child: Text("1",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtMontserratSemiBold15Bluegray800))
                                    ])),
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup7371,
                                height: getVerticalSize(17),
                                width: getHorizontalSize(3),
                                margin:
                                    getMargin(left: 9, top: 55, bottom: 26)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Час",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Container(
                                          width: getHorizontalSize(61),
                                          margin: getMargin(top: 7),
                                          padding: getPadding(
                                              left: 17,
                                              top: 20,
                                              right: 17,
                                              bottom: 20),
                                          decoration: AppDecoration
                                              .txtOutlineBlue30001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder10),
                                          child: Text("23",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtMontserratSemiBold15Bluegray800))
                                    ])),
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup7371,
                                height: getVerticalSize(17),
                                width: getHorizontalSize(3),
                                margin:
                                    getMargin(left: 9, top: 55, bottom: 26)),
                            Padding(
                                padding: getPadding(left: 9),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Мин",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Container(
                                          width: getHorizontalSize(61),
                                          margin: getMargin(top: 7),
                                          padding: getPadding(
                                              left: 15,
                                              top: 20,
                                              right: 15,
                                              bottom: 20),
                                          decoration: AppDecoration
                                              .txtOutlineBlue30001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder10),
                                          child: Text("40",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtMontserratSemiBold15Bluegray800))
                                    ]))
                          ])),
                  Container(
                      width: getHorizontalSize(200),
                      margin: getMargin(top: 32),
                      child: Text(
                          "После окончания таймера вы сможете писать в чате",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtMontserratMedium15Blue600)),
                  Spacer(),
                  Container(
                      width: double.maxFinite,
                      padding:
                          getPadding(left: 22, top: 23, right: 22, bottom: 23),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.shade100,
                      ),
                      child: Row(children: [
                        Text("Вы записаны на:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold15Bluegray800),
                        Padding(
                            padding: getPadding(left: 17),
                            child: Text("24.07.2022",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratMedium15Blue600)),
                        Padding(
                            padding: getPadding(left: 27),
                            child: Text("14:30",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratMedium15Blue600))
                      ])),
                  Padding(
                    padding: getPadding(top: 10, right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 70,
                          child: TextField(
                            // controller: _controllertimestart,
                            enabled: false,
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.attach_file,
                                  size: 24,
                                  color: Colors.blue,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: 'Сообщение',
                                labelStyle: TextStyle(
                                  color: ColorConstant.gray50001,
                                  fontSize: getFontSize(
                                    13,
                                  ),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        Icon(
                          Icons.mic,
                          size: 24,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ])),
      );

  Widget filesss(BuildContext context) {
    late var refreshGridView;
    final Directory directory = new Directory('/storage/emulated/0/Download');

    var imageList =
        directory.listSync().map((item) => item.path).toList(growable: false);
    return ListView.separated(
        shrinkWrap: true,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          File file = new File(imageList[index]);
          String name = file.path.split('/').last;
          return GestureDetector(
              onTap: () {
                _isFileSelect = !_isFileSelect;
                setState(() {});
              },
              child: Padding(
                padding: new EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.file_present,
                      color: Colors.grey.shade400,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Text(
                              name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                        Text('30 Mb',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade400,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: _isFileSelect
                              ? Colors.blue
                              : ColorConstant.whiteA700),
                    ),
                    SizedBox(
                      width: 15,
                    )
                  ],
                ),
              ));
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(indent: 0, height: 1));
  }

  Widget _messagesWithUserInfo(BuildContext context) => SafeArea(
        child: Column(
          children: [
            _messages(context),
            _isFilePicker
                ? Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 18),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA70000,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      _isFilePicker = false;
                                      setState(() {});
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CustomCameraScreen()));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: getPadding(left: 10, right: 10),
                                      height: 40,
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          20,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.camera_alt,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'Камера',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      openImagePicker(context);
                                      _isSelectMedia = false;
                                      _isFilePicker = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: getPadding(left: 10, right: 10),
                                      height: 40,
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          20,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.image,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'Галерея',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      _indexSelect = 1;
                                      setState(() {});
                                    },
                                    child: Text('Все',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: _indexSelect == 1
                                              ? Colors.blue
                                              : Colors.black,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w200,
                                        ))),
                                GestureDetector(
                                    onTap: () {
                                      _indexSelect = 2;
                                      setState(() {});
                                    },
                                    child: Text('Фото',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: _indexSelect == 2
                                              ? Colors.blue
                                              : Colors.black,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w200,
                                        ))),
                                GestureDetector(
                                    onTap: () {
                                      _indexSelect = 3;
                                      setState(() {});
                                    },
                                    child: Text('Видео',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: _indexSelect == 3
                                              ? Colors.blue
                                              : Colors.black,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w200,
                                        ))),
                                GestureDetector(
                                    onTap: () {
                                      _indexSelect = 4;
                                      setState(() {});
                                    },
                                    child: Text('Текстовые',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: _indexSelect == 4
                                              ? Colors.blue
                                              : Colors.black,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w200,
                                        ))),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Expanded(
                              child: Container(
                                  //height: MediaQuery.of(context).size.height/4,
                                  child: filesss(context))),
                        ],
                      ),
                    ),
                  )
                : Container(),
            mediaList.isEmpty ? Container() : previewList(),
            _isFilePicker
                ? CustomButton(
                    onTap: () {
                      _isFileSelect ? print('dgfg') : _isFilePicker = false;

                      setState(() {});
                    },
                    height: getVerticalSize(56),
                    text: _isFileSelect ? 'Добавить' : "Отменить ",
                    margin: getMargin(top: 5, bottom: 5, left: 10, right: 10),
                    variant: _isFileSelect
                        ? ButtonVariant.OutlineBlue70049
                        : ButtonVariant.FillGray50001,
                    fontStyle: ButtonFontStyle.MontserratRomanSemiBold18Gray300)
                : Container(
                    decoration: BoxDecoration(color: Colors.grey.shade100),
                    height: 62,
                    width: MediaQuery.of(context).size.width - 20,
                    child: Stack(
                      */
/*     crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,*//*

                      children: [
                        Padding(
                          padding: getPadding(bottom: 12, top: 10, right: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextField(
                              // controller: _controllertimestart,
                              style: TextStyle(
                                color: ColorConstant.gray50001,
                                fontSize: getFontSize(
                                  13,
                                ),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),

                              decoration: InputDecoration(
                                  isDense: true,
                                  //contentPadding: EdgeInsets.zero,
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        _isSelectMedia = true;
                                        _isFilePicker = false;
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.attach_file,
                                        size: 24,
                                        color: Colors.blue,
                                      )),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: 'Сообщение',
                                  labelStyle: TextStyle(
                                    color: ColorConstant.gray50001,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ),
                        mediaList.isEmpty
                            ? Padding(
                                padding: getPadding(top: 10, right: 5),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: SocialMediaRecorder(
                                    //backGroundColor: ColorConstant.whiteA70000,
                                    slideToCancelText: 'Отменить',
                                    slideToCancelTextStyle: TextStyle(
                                        color: ColorConstant.gray50001,
                                        fontSize: getFontSize(
                                          14,
                                        )),
                                    cancelText: 'Отменить',
                                    cancelTextStyle: TextStyle(
                                        color: ColorConstant.gray50001,
                                        fontSize: getFontSize(
                                          14,
                                        )),
                                    recordIcon: Icon(
                                      Icons.mic,
                                      color: Colors.blue,
                                      size: 28,
                                    ),
                                    sendRequestFunction: (soundFile, _) {
                                      print(
                                          "FSVJFDJKFJFJJFJFSJDJFKDSJKJFJSLEDKDEFJFKDSJFLDSFK");
                                      _isVisible = true;
                                      setState(() {});
                                    },
                                    encode: AudioEncoderType.AAC,
                                  ),
                                ))
                            : Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.send,
                                      color: Colors.blue,
                                    ))),

                        //Icon(Icons.keyboard_voice, color: Colors.blue, size: 30,)
                      ],
                    ),
                  ),
            _isSelectMedia
                ? Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.blueAccent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              _isSelectMedia = false;
                              setState(() {});
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CustomCameraScreen()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.blue,
                                        size: 45,
                                      )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Камера',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            )),
                        GestureDetector(
                            onTap: () {
                              openImagePicker(context);
                              _isSelectMedia = false;
                              setState(() {});
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Icon(
                                        Icons.image,
                                        color: Colors.blue,
                                        size: 45,
                                      )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Галерея',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            )),
                        GestureDetector(
                            onTap: () {
                              _isFilePicker = true;
                              _isSelectMedia = false;
                              setState(() {});
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Icon(
                                        Icons.description,
                                        color: Colors.blue,
                                        size: 45,
                                      )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Документ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ))
                : Container(),
          ],
        ),
      );

  ///
  Widget _messages(BuildContext context) => Expanded(
        child: Container(
          padding: const EdgeInsets.only(top: 18),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA70000,
          ),
          child: _messagesList(context),
        ),
      );

  ///
  Widget _messagesList(BuildContext context) => ListView.builder(
        itemCount: 13,
        itemBuilder: (BuildContext context, int index) => Bubble(
          me: index % 2 == 0,
          index: index,
          voice: index == 4 || index == 5,
          msg: Constants.messages[index],
        ),
      );
}
*/
