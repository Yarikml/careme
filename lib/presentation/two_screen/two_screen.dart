import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_radio_button.dart';
import 'package:careme24/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable


bool _isNotCode = false;
 String _dropDownValue='';
List<String> _locations = ['Австралия'
    ,'Австрия'
    ,'Азербайджан'
    ,'Албания'
    ,'Алжир'
    ,'Ангола'
    ,'Андорра'
    ,'Антигуа'
    ,'Барбуда'
    ,'Аргентина'
    ,'Армения'
    ,'Афганистан'
    ,'Багамские Острова'
    ,'Бангладеш'
    ,'Барбадос'
    ,'Бахрейн'
    ,'Белоруссия'
    ,'Белиз'
    ,'Бельгия'
    ,'Бенин'
    ,'Болгария'
    ,'Боливия'
    ,'Босния и Герцеговина'
    ,'Ботсвана'
    ,'Бразилия'
    ,'Бруней'
    ,'Буркина-Фасо'
    ,'Бурунди'
    ,'Бутан'
    ,'Вануату'
    ,'Венгрия'
    ,'Венесуэла'
    ,'Восточный Тимор'
    ,'Вьетнам'
    ,'Габон'
    ,'Гаити'
    ,'Гайана'
    ,'Гамбия'
    ,'Гана'
    ,'Гватемала'
    ,'Гвинея'
    ,'Гвинея-Бисау'
    ,'Германия'
    ,'Гондурас'
    ,'Гренада'
    ,'Греция'
    ,'Грузия'
    ,'Дания'
    ,'Демократическая Республика Конго'
    ,'Джибути'
    ,'Доминика'
    ,'Доминиканская Республика'
    ,'Египет'
    ,'Замбия'
    ,'Зимбабве'
    ,'Израиль'
    ,'Индия'
    ,'Индонезия'
    ,'Иордания'
    ,'Ирак'
    ,'Иран'
    ,'Ирландия'
    ,'Исландия'
    ,'Испания'
    ,'Италия'
    ,'Йемен'
    ,'Кабо-Верде'
    ,'Казахстан'
    ,'Камбоджа'
    ,'Камерун'
    ,'Канада'
    ,'Катар'
    ,'Кения'
    ,'Кипр'
    ,'Кирибати'
    ,'Китай'
    ,'Колумбия'
    ,'Коморы'
    ,'Конго'
    ,'Корейская Народно-Демократическая Республика'
    ,'Коста-Рика'
    ,'Кот-д Ивуар'
    ,'Куба'
    ,'Кувейт'
    ,'Кыргызстан'
    ,'Лаос'
    ,'Латвия'
    ,'Лесото'
    ,'Либерия'
    ,'Ливан'
    ,'Ливия'
    ,'Литва'
    ,'Лихтенштейн'
    ,'Люксембург'
    ,'Маврикий'
    ,'Мавритания'
    ,'Мадагаскар'
    ,'Малави'
    ,'Малайзия'
    ,'Мали'
    ,'Мальдивы'
    ,'Мальта'
    ,'Марокко'
    ,'Маршалловы Острова'
    ,'Мексика'
    ,'Мозамбик'
    ,'Молдавия'
    ,'Монако'
    ,'Монголия'
    ,'Мьянма'
    ,'Намибия'
    ,'Науру'
    ,'Непал'
    ,'Нигер'
    ,'Нигерия'
    ,'Нидерланды'
    ,'Никарагуа'
    ,'Новая Зеландия'
    ,'Норвегия'
    ,'Объединённые Арабские Эмираты'
    ,'Оман'
    ,'Пакистан'
    ,'Палау'
    ,'Панама'
    ,'Папуа-Новая Гвинея'
    ,'Парагвай'
    ,'Перу'
    ,'Польша'
    ,'Португалия'
    ,'Российская Федерация'
    ,'Руанда'
    ,'Румыния'
    ,'Сальвадор'
    ,'Самоа'
    ,'Сан-Марино'
    ,'Сан-Томе и Принсипи'
    ,'Саудовская Аравия'
    ,'Северная Македония'
    ,'Сейшельские Острова'
    ,'Сенегал'
    ,'Сент-Винсент и Гренадины'
    ,'Сент-Китс и Невис'
    ,'Сент-Люсия'
    ,'Сербия'
    ,'Сингапур'
    ,'Сирия'
    ,'Словакия'
    ,'Словения'
    ,'Соединённое Королевство Великобритании и Северной Ирландии'
    ,'Соединённые Штаты Америки'
    ,'Соломоновы Острова'
    ,'Сомали'
    ,'Судан'
    ,'Суринам'
    ,'Сьерра-Леоне'
    ,'Таджикистан'
    ,'Тайланд'
    ,'Танзания'
    ,'Того'
    ,'Тонга'
    ,'Тринидад и Тобаго'
    ,'Тувалу'
    ,'Тунис'
    ,'Туркменистан'
    ,'Турция'
    ,'Уганда'
    ,'Узбекистан'
    ,'Украина'
    ,'Уругвай'
    ,'Федеративные Штаты Микронезии'
    ,'Фиджи'
    ,'Филиппины'
    ,'Финляндия'
    ,'Франция'
    ,'Хорватия'
    ,'Центральноафриканская Республика'
    ,'Чад'
    ,'Черногория'
    ,'Чехия'
    ,'Чили'
    ,'Швейцария'
    ,'Швеция'
    ,'Шри-Ланка'
    ,'Эквадор'
    ,'Экваториальная Гвинея'
    ,'Эритрея'
    ,'Эсватини'
    ,'Эстония'
    ,'Эфиопия'
    ,'Южная Корея'
    ,'Южно-Африканская Республика'
    ,'Южный Судан'
    ,'Ямайка'
    ,'Япония'];
class TwoScreen extends StatefulWidget {
  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController addresslineoneController = TextEditingController();

  TextEditingController postalcodeController = TextEditingController();

  String radioGroup = "";

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
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
                      onTapArrowleft32(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Адрес доставки"),
                styleType: Style.bgFillBlue60001),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 23, top: 62, right: 23),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: nameController,
                              hintText: "ФИО"),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: cityController,
                              hintText: "Город",
                              margin: getMargin(top: 20)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: addresslineoneController,
                              hintText: "Улица, дом, квартира, блок и т.п",
                              margin: getMargin(top: 20, bottom: 20)),
                            Container(


                                decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10)),

                                    border: Border.all(
                                        color: ColorConstant.gray50001,
                                        width: getHorizontalSize(1),
                                        strokeAlign: strokeAlignCenter)),
                                child:   Padding(
                                    padding: getPadding(left: 15, right: 15, bottom: 2,top: 2),
                                    child:DropdownButton(underline: SizedBox(),
                                    hint: _dropDownValue == ''
                                        ? Text('Страна', style: TextStyle(
                                        color: ColorConstant.gray50001,
                                        fontSize: getFontSize(
                                            18,
                                        ),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                    ),)
                                        : Text(
                                        _dropDownValue,
                                        style: TextStyle(
                                            color: ColorConstant.gray50001,
                                            fontSize: getFontSize(
                                                18,
                                            ),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                    isExpanded: true,
                                    iconSize: 30.0,
                                    style:TextStyle(
                                        color: ColorConstant.gray50001,
                                        fontSize: getFontSize(
                                            18,
                                        ),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                    ),
                                    items: _locations.map(
                                            (val) {
                                            return DropdownMenuItem<String>(
                                                value: val,
                                                child: Text(val),
                                            );
                                        },
                                    ).toList(),
                                    onChanged: (val) {
                                        setState(
                                                () {
                                                _dropDownValue = val.toString();
                                            },
                                        );
                                    },
                                ))
                            )

                          /*CustomButton(
                              height: getVerticalSize(56),
                              text: "Австрия",
                              margin: getMargin(top: 20),
                              variant: ButtonVariant.OutlineGray50001_1,
                              padding: ButtonPadding.PaddingT17,
                              fontStyle:
                                  ButtonFontStyle.MontserratMedium18Bluegray800,
                              suffixWidget: Container(
                                  margin: getMargin(left: 30),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstant.gray50001,
                                          width: getHorizontalSize(2),
                                          strokeAlign: strokeAlignCenter)),
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgArrowdownGray50001)))*/,
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: postalcodeController,
                              hintText: "Почтовый код",
                              margin: getMargin(top: 20),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone),
                          Padding(
                              padding:
                                  getPadding(top: 16, bottom: 5),
                              child:
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [   GestureDetector(
                                onTap: (){_isNotCode=!_isNotCode;
                                setState(() {

                                });
                                },
                                child:Container(
                                  margin: getMargin(

                                    right: 5,

                                  ),
                                  padding: getPadding(
                                    all: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadiusStyle.roundedBorder10,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getSize(
                                          10,
                                        ),
                                        width: getSize(
                                          10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: _isNotCode?Colors.grey: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              7,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                )),  Text("В моем адресе нет почтового кода",style: TextStyle(
                              color: ColorConstant.gray50001,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ) )],)
                            /*CustomRadioButton(
                                  text: "В моем адресе нет почтового кода",
                                  iconSize: getHorizontalSize(20),
                                  value: "В моем адресе нет почтового кода",
                                  groupValue: radioGroup,
                                  margin:
                                      getMargin(top: 16, right: 90, bottom: 5),
                                  fontStyle: RadioFontStyle.MontserratMedium12,
                                  onChange: (value) {
                                    radioGroup = value;
                                  })*/)
                        ]))),
            bottomNavigationBar: CustomButton(
                onTap: (){

                 if (  (nameController.toString().isNotEmpty)&
                   (cityController.toString().isNotEmpty)&
                    (addresslineoneController.toString().isNotEmpty)&
                 (   _dropDownValue.toString().isNotEmpty))
                 {Navigator.pushNamed(context, AppRoutes.heckoutScreen);

                 postalcodeController.clear();
                 addresslineoneController.clear();
                 cityController.clear();
                 nameController.clear();
                 _dropDownValue='';


                 }

                },
                height: getVerticalSize(56),
                text: "Сохранить",
                margin: getMargin(left: 20, right: 26, bottom: 40),
                variant: (  (nameController.toString().isNotEmpty)&
                (cityController.toString().isNotEmpty)&
                (addresslineoneController.toString().isNotEmpty)&
                (   _dropDownValue.toString().isNotEmpty))?  ButtonVariant.OutlineBlue70049:
                ButtonVariant.FillGray50001,
                fontStyle: ButtonFontStyle.MontserratRomanSemiBold18)));
  }

  onTapArrowleft32(BuildContext context) {
    Navigator.pop(context);
  }
}


