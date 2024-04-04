import 'package:careme24/core/app_export.dart';
import 'package:careme24/presentation/what_to_do_read_screen/what_to_do_read_screen.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PreviewScreen extends StatefulWidget {
  final File imageFile;
  final List<File> fileList;

  const PreviewScreen({
    required this.imageFile,
    required this.fileList,
  });

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  bool _isSave = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(48),
              leadingWidth: 43,
              leading: AppbarImage(
                  height: getVerticalSize(16),
                  width: getHorizontalSize(11),
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 15,right: 15, top: 15, bottom: 15),
                  onTap: () { Navigator.pop(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "Видео"),
              styleType: Style.bgFillBlue60001),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(top: 32),
                child: Center(
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                        child: Image.file(widget.imageFile,
                          height: MediaQuery.of(context).size.height/2,
                        )
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  margin: getMargin(top: 24),
                  width: MediaQuery.of(context).size.width - 40,
                  height: 56,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorConstant.indigoA400,
                          ColorConstant.bluegradient,
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                        "Сохранить",
                        style: AppStyle.txtMontserratSemiBold18WhiteA700,
                      )),
                ),
              ),
              Padding(
                padding: getPadding(top: 32),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            _isSave = !_isSave;
                            setState(() {});
                          },
                          child: Container(
                            margin: getMargin(
                              right: 5,
                            ),
                            padding: getPadding(
                              all: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder10,
                              color: ColorConstant.whiteA700,
                              border: Border.all(
                                color: Colors.grey,
                                width: getHorizontalSize(
                                  1,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getSize(
                                    8,
                                  ),
                                  width: getSize(
                                    8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: _isSave
                                        ? Colors.grey
                                        : Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(
                                      getHorizontalSize(
                                        7,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Text( 'Пометить как важное', style: AppStyle.txtMontserratMedium15Bluegray800)
                    ]),
              ),
              Container(
                margin: getMargin(top: 24),
                  width: MediaQuery.of(context).size.width - 60,
                  child: Text("Видео без пометки удаляется через 7-10 дней", style: AppStyle.txtMontserratSemiBold18,textAlign: TextAlign.center,))

            ],
          ),
        ));
  }
}


