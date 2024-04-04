import 'dart:io';

import 'package:careme24/custom_page_my/report_polic_textarea.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_picker_widget/media_picker_widget.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../custom_camera_screen.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';

class FileCatalogPage extends StatefulWidget {
  const FileCatalogPage({Key? key}) : super(key: key);

  @override
  State<FileCatalogPage> createState() => _FileCatalogPageState();
}

class _FileCatalogPageState extends State<FileCatalogPage> {
  bool _isVisibleFilePicker=false;
   List<Media> mediaList = [];
  int _indexSelect = -1;
  bool _isFileSelect = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea (child:Scaffold(
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
          title: AppbarTitle(text: 'Заявление'),
          styleType: Style.bgFillBlue60001),
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
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
                        _isVisibleFilePicker= false;
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
                      onTap: (){ openImagePicker(context);

                      _isVisibleFilePicker=false;
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
          ],
        ),
      ),

    ));
  }

  Widget filesss(BuildContext context) {
    late var refreshGridView;
    final Directory directory = new Directory(
        '/storage/emulated/0/Download');

    var imageList = directory
        .listSync()
        .map((item) => item.path)

        .toList(growable: false);
    return ListView.separated(
        shrinkWrap: true,
        itemCount: imageList.length,

        itemBuilder: (context, index) {
          File file = new File(imageList[index]);
          String name = file.path.split('/').last;
          return GestureDetector(
              onTap: (){_isFileSelect = !_isFileSelect; setState(() {

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
                          color: _isFileSelect ?Colors.blue: ColorConstant.whiteA700
                      ),), SizedBox(width: 15,)
                  ],
                ),
              ));
        },
        separatorBuilder:
            (BuildContext context, int index) =>
        const Divider(indent: 0, height: 1)
    );
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

                          onTap: (){_isVisibleFilePicker=true;
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
}
