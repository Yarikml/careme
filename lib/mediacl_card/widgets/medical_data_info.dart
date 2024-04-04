// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MedicalDataInfoWidget extends StatefulWidget {
  final String numberPolice;
  final String nameCompany;
  final String dateAction;
  final String medicien;
  final String medicineInfo;
  MedicalDataInfoWidget({
    Key? key,
    required this.numberPolice,
    required this.nameCompany,
    required this.dateAction,
    required this.medicien,
    required this.medicineInfo,
  }) : super(key: key);

  @override
  State<MedicalDataInfoWidget> createState() => _MedicalDataInfoWidgetState();
}

class _MedicalDataInfoWidgetState extends State<MedicalDataInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(29, 15, 17, 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Медицинская страховка'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Номер'),
                Text(widget.numberPolice),
              ],
            ),
            Row(
              children: [Text('Срок действия'), Text(widget.dateAction)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 130,
                  height: 51,
                  child: Text('Наименование страховой компании'),
                ),
                Text('data')
              ],
            ),
            AddFileWidget(),
            Text('Не переносимость лекарств'),
            AddFileWidget(),
            Text('Аллергии'),
            AddFileWidget(),
            Text('Диагнозы'),
            AddFileWidget(),
            Text('Прививки'),
            AddFileWidget(),
            Text('Приём лекарств'),
            BottomInfoWidget(
              text: widget.medicien,
              textInfo: widget.medicineInfo,
            ),
            BottomInfoWidget(
              text: widget.medicien,
              textInfo: widget.medicineInfo,
            ),
            BottomInfoWidget(
              text: widget.medicien,
              textInfo: widget.medicineInfo,
            ),
          ],
        ));
  }
}

class AddFileWidget extends StatelessWidget {
  const AddFileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/icon-plus.png',
          color: Color(0xff2C3E4F),
          width: 12,
          height: 12,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Добавить файл',
          style: TextStyle(
            color: Color(0xff2C3E4F),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class BottomInfoWidget extends StatelessWidget {
  final String text;
  final String textInfo;
  const BottomInfoWidget({
    Key? key,
    required this.text,
    required this.textInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(text), Text(textInfo)],
    );
  }
}
