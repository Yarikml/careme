// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'medical_data_info.dart';

class MedicalDataWidget extends StatefulWidget {
  final int bloodType;
  final String numberPolice;
  const MedicalDataWidget({
    Key? key,
    required this.bloodType,
    required this.numberPolice,
  }) : super(key: key);

  @override
  State<MedicalDataWidget> createState() => _MedicalDataWidgetState();
}

class _MedicalDataWidgetState extends State<MedicalDataWidget> {
  bool isVisibality = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: isVisibality ? 500 : 111,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Color(0xffB3B3B3))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Column(
              children: [
                Text(
                  'Медицинские данные',
                  style: TextStyle(
                    color: Color(0xff5CA2C8),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7, right: 27, left: 47),
                  child: Row(
                    children: [
                      Text(
                        'Группа крови',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '${widget.bloodType}+',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisibality = !isVisibality;
                              print(isVisibality);
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
                                ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 47, right: 47),
                  child: Row(
                    children: [
                      Text(
                        'Номер полиса',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        widget.numberPolice,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (isVisibality)
            MedicalDataInfoWidget(
              numberPolice: '135 689 ...',
              nameCompany: 'АлмаМед',
              dateAction: '10.02.2023',
              medicien: 'Эргоферон',
              medicineInfo: '1 т./2',
            ),
        ],
      ),
    );
  }
}
