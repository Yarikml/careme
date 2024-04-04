import 'package:careme24/core/app_export.dart';
import 'package:careme24/presentation/list_reason_setting_add_item/list_reason_setting_add_item.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../../custom_widget_my/reason_ambulance.dart';


final _controller = ValueNotifier<bool>(false);
bool _checked = false;
bool select_reason = false;
Color select_color = Color.fromRGBO(254, 246, 225, 100);

final List<String> reasonText = <String>[
  'M1.8B11 Нарушение речи, слабость в конечеостях',
  "M1.BA41 Сильная боль в груди",
  "M1.NE81 Опасная травма, ранение, ДТП",
  "3.29. Цунами",
  "M1.MD11 Асфиксия всех видов, острое нарушение дыхания",
  "M1.5. Кровотечение сильное или внутреннее",
  "M1.6. Схватки, роды (скрыто,  добавить)",
  "C5",
  "C6",
  "C7",
  "C8"
];

final List<bool> reasonDisable = <bool>[
  false,
  false,
  true,
  true,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

class ListReasonSettingPage extends StatefulWidget {
  @override
  State<ListReasonSettingPage> createState() => _ListReasonSettingPageState();
}

class _ListReasonSettingPageState extends State<ListReasonSettingPage> {
  bool isSelectedSwitch = false;

  TextEditingController componentfortyController = TextEditingController();

  TextEditingController frame7304Controller = TextEditingController();

  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        if (_controller.value) {
          _checked = true;
        } else {
          _checked = false;
        }
      });
    });
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
                    margin: getMargin(left: 32, top: 12, bottom: 20),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                actions: [
                  AppbarImage(
                      height: 24,
                      width: 24,
                      svgPath: ImageConstant.imgCheckMark,
                      margin: getMargin(right: 24),
                      onTap: () {
                        Navigator.pop(context);
                      })
                ],
                centerTitle: true,
                title: AppbarTitle(text: "Настройки"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: getPadding(top: 14),
                        width: MediaQuery.of(context).size.width - 40,
                        height: MediaQuery.of(context).size.height - 120,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Выбирете то что будет отображаться в списке",
                                style: AppStyle.txtMontserratSemiBold18Black900,
                              ),
                              Padding(
                                padding: getPadding(top: 12, bottom: 24),
                                child: Text(
                                  "Для полного списка активируйте платную услугу",
                                  style: AppStyle.txtMontserratMedium15Blue600,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ListReasonSettingAddItemPage()));
                                },
                                child: Container(
                                  height: 80,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: getPadding(left: 19),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(Icons.add, size: 32, color: ColorConstant.gray500,)),
                                  ),
                                ),
                              ),
                              Divider(indent: 0, height: 1),
                              Expanded(
                                  child: ListView.separated(
                                itemCount: reasonText.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Reason(
                                    text: reasonText[index],
                                    disable: reasonDisable[index],
                                    backgroundColor: Colors.white,
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        const Divider(indent: 0, height: 1),
                              ))
                            ]),
                      )
                    ]))));
  }
}
