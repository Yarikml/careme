import 'package:careme24/mediacl_card/add_medcard/add_medcard_page.dart';
import 'package:careme24/mediacl_card/state_managers/cubit.dart';
import 'package:careme24/mediacl_card/state_managers/state.dart';
import 'package:careme24/mediacl_card/widgets/add_button.dart';
import 'package:careme24/mediacl_card/widgets/add_phone_number_box.dart';
import 'package:careme24/mediacl_card/widgets/medical_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_style.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import 'medical_card_page.dart';

class MedicalCardListPage extends StatefulWidget {
  const MedicalCardListPage({Key? key}) : super(key: key);

  @override
  State<MedicalCardListPage> createState() => _MedicalCardListPageState();
}

class _MedicalCardListPageState extends State<MedicalCardListPage> {
  MedicalCardCubit medicalCardCubit = MedicalCardCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> AddMedcardPage()));
              },
              child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.transparent,
                  height: 20,
                  child: Image.asset(
                    'assets/images/icon-plus.png',
                  )),
            )
          ],
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
          centerTitle: false,
          title: AppbarTitle(
            text: "Мед.карты",
            margin: getMargin(
              left: 15,
            ),
          ),
          styleType: Style.bgFillBlue60001,
        ),
        body: BlocBuilder<MedicalCardCubit, MedicalCardState>(
            bloc: medicalCardCubit,
            builder: (context, state) {
              return Container(
                margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
                height: double.maxFinite,
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'МОЯ КАРТА',
                        style: AppStyle.txtInterExtraBold12.copyWith(
                            color: Color(
                              0xff2C3E4F,
                            ).withOpacity(0.8),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MediacalCardWidget(
                        displayName: 'Aram Balayan',
                        phoneNumber: '+7-666-666-66-66',
                        imagePath: 'assets/images/Avatar.png',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MedicalCardPage(),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'ЗАПРОСЫ',
                        style: AppStyle.txtInterExtraBold12.copyWith(
                            color: Color(
                              0xff2C3E4F,
                            ).withOpacity(0.8),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      state.onAdd == false
                          ? AddButton(
                              buttonText: 'Добавить запрос',
                              onTap: () => medicalCardCubit.onAdd(),
                            )
                          : AddPhoneNumber(
                              onClose: () => medicalCardCubit.onAdd(),
                            ),
                      Container(
                        child: Text(
                          'ДОПОЛНИТЕЛЬНО',
                          style: AppStyle.txtInterExtraBold12.copyWith(
                              color: Color(
                                0xff2C3E4F,
                              ).withOpacity(0.8),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      AddButton(
                        buttonText: 'Добавить',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
