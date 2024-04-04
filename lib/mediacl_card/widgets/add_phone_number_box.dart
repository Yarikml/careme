import 'package:flutter/material.dart';

import '../../theme/app_style.dart';

class AddPhoneNumber extends StatelessWidget {
 final VoidCallback onClose;
  const AddPhoneNumber({Key? key, required this.onClose,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: onClose,
              child: Icon(
                Icons.close,
                size: 35,
                color: Color(0xff2C3E4F),
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Введите номер телефона для\nпоиска',
            textAlign: TextAlign.center,
            style: AppStyle.txtInterExtraBold12.copyWith(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xff8E969B)),
            width: MediaQuery.of(context).size.width,
            child: Text('Добавить',style: AppStyle.txtInterExtraBold12.copyWith(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w600),),
          )
        ],
      ),
    );
  }
}
