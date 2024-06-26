
import 'package:flutter/material.dart';

import '../core/app_export.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_decoration.dart';
import '../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ChatcorrespondeItemWidget extends StatefulWidget {
  late bool isSelectedVisibler;
  ChatcorrespondeItemWidget(
  {
    required this.isSelectedVisibler,
}
      );

  @override
  State<ChatcorrespondeItemWidget> createState() => _ChatcorrespondeItemWidgetState();
}

class _ChatcorrespondeItemWidgetState extends State<ChatcorrespondeItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [

        Card(
          shape: RoundedRectangleBorder(
            //side:  BorderSide(color: Colors.green,width: 3),
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(

            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle2626,
                height: getVerticalSize(
                  86,
                ),

                radius: BorderRadius.only(

                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      24,
                    ),

                  ),
                ),
              ),
              Expanded(child:Padding(
                padding: getPadding(
                  left: 12,
                  top: 4,
                  right: 5,
                  bottom: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                          margin: getMargin(
                            top: 5,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Участковый врач ",
                                  style: TextStyle(
                                    color: ColorConstant.blue60001,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(text: '\n'),
                                TextSpan(
                                  text: "Иванов А.П",
                                  style: TextStyle(
                                    color: ColorConstant.blue60001,
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(


                          decoration: BoxDecoration(
                            color: ColorConstant.blue60001,borderRadius: BorderRadiusStyle.txtRoundedBorder10
                          ),
                          child:Padding(
                              padding: EdgeInsets.all(6),
                            child: Text(
                            "11",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                        right: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Container(width:MediaQuery.of(context).size.width/6,
                      child: Text(
                            "Александр"+':',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium10,
                          )),
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Container(width:MediaQuery.of(context).size.width/4 ,child:Text(
                              "Последнее сообщение иоио гпорор оооророр",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular10,
                            )),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                            ),
                            child: Text(
                              "20 мин",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  10,
                                ),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
        Visibility(
          visible: widget.isSelectedVisibler,
          child: Container(
            width:MediaQuery.of(context).size.width-50,
            height: getVerticalSize(
              86,
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(51, 132, 226, 0.7),
                borderRadius: BorderRadius.all(Radius.circular(10))


            ),
            child:Stack(
              children: [
                GestureDetector(
                    onTap: (){
                      setState(() {
                        widget.isSelectedVisibler = false;
                      });

                    },
                    child:Align(
                  alignment: Alignment.topRight ,
                  child: Padding(
                      padding: EdgeInsets.only(top:12, right: 18),
                      child:Text('Отмена', style: TextStyle(
                  color:  Colors.white,
                  fontSize: getFontSize(
                    9,
                  ),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),)) ,)),
               GestureDetector (
                   onTap: (){
                     //Удаление чата
                   },

                   child:Align(
                  alignment: Alignment.center,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.delete, size: 24,color: Colors.white,),
                    Text('Удалить чат', style: TextStyle(
                      color:  Colors.white,
                      fontSize: getFontSize(
                        12,
                      ),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),)

                  ],)
                )),
              ],
            )

          ),
        ),
      ],
    );
  }
}
