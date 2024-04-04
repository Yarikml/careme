import 'package:careme24/mediacl_card/widgets/personal_info_about_widget.dart';
import 'package:flutter/material.dart';

class PersonalInfoWidget extends StatefulWidget {
  final String userName;
  final String phoneNumber;
  const PersonalInfoWidget({
    required this.userName,
    required this.phoneNumber,
    Key? key,
  }) : super(key: key);

  @override
  State<PersonalInfoWidget> createState() => _PersonalInfoWidgetState();
}

class _PersonalInfoWidgetState extends State<PersonalInfoWidget> {
  bool isVisibality = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(29, 15, 17, 17),
      height: isVisibality ? 405 : 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xffB3B3B3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: Image.asset('assets/images/person.png')),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Личные данные',
                      style: TextStyle(
                        color: Color(0xff5CA2C8),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                TextField(
                  
                  decoration: InputDecoration(
                   contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                    hintText: 'Name Surname',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                    Text(
                      widget.phoneNumber,
                      style: TextStyle(
                        color: Color(0xff2C3E4F),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisibality = !isVisibality;
                        });
                      },
                      child: isVisibality
                          ? Image.asset(
                              'assets/images/Vector 177.png',
                              width: 24,
                              height: 15,
                            )
                          : Image.asset(
                              'assets/images/arrow_down.png',
                            ))),
            ],
          ),
          if (isVisibality)
            Expanded(
              child: PersonalInfoAboutWidget(
                countryAndAddres: 'г. Ростов-на-Дону, ул. Нансена 107а',
                date: '13.08.1978',
                email: 'info@yandex.ru',
                passport: '_ _ _ _  _ _ _ _ _ _',
              ),
            ),
        ],
      ),
    );
  }
}
