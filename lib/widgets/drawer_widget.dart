import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

import '../calls_page/calls_page.dart';
import '../mediacl_card/medical_card_page_list.dart';
import 'app_bar/appbar_image.dart';

class DrawerWidget extends StatelessWidget {
  final String avatarPath;
  final String userName;
  final String phoneNumber;
  const DrawerWidget(
      {required this.avatarPath,
      required this.userName,
      required this.phoneNumber,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ListView(
        padding: EdgeInsets.only(left: 23),
        children: [
          Column(
            children: [
              Row(
                children: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(11),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(top: 15, bottom: 15),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'CareMe 24',
                    style: TextStyle(
                      fontSize: 22.3,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Container(
                      height: 76,
                      width: 76,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        avatarPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          phoneNumber,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MedicalCardListPage())),
              child: Row(
                children: [
                  Image.asset('assets/images/text-box.png'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Медкарты',
                    style: AppStyle.txtInterExtraBold12.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CallsPage())),
              child: Row(
                children: [
                  Image.asset('assets/images/phone.png'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Вызовы',
                    style: AppStyle.txtInterExtraBold12.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Image.asset('assets/images/medical-bag.png'),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Моя Аптечка',
                  style: AppStyle.txtInterExtraBold12.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Image.asset('assets/images/pill-icon.png'),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Прием лекарств',
                  style: AppStyle.txtInterExtraBold12.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Image.asset(
                    'assets/images/stethoscope_FILL0_wght400_GRAD0_opsz48 1.png'),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Врачи',
                  style: AppStyle.txtInterExtraBold12.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Image.asset(
                    'assets/images/account_balance_wallet_FILL1_wght400_GRAD0_opsz48 1.png'),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Кошелек',
                  style: AppStyle.txtInterExtraBold12.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Image.asset(
                    'assets/images/settings_FILL1_wght400_GRAD0_opsz48 1.png'),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Настройки',
                  style: AppStyle.txtInterExtraBold12.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 46, top: 20),
            height: 1,
            width: double.maxFinite,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              children: [
                Image.asset(
                    'assets/images/move_item_FILL1_wght400_GRAD0_opsz48 1.png'),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Выход',
                  style: AppStyle.txtInterExtraBold12.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
