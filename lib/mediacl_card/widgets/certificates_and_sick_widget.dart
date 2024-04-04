// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CerificatesAnfSickWidget extends StatelessWidget {
  final String date;
  final String date2;
  const CerificatesAnfSickWidget({
    Key? key,
    required this.date,
    required this.date2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 143,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Color(0xffB3B3B3))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Справки и больничные листы',
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
                      Expanded(
                        child: Container(
                          width: 128,
                          height: 34,
                          child: Text(
                            'Справка в бассейн',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '$date2',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/images/arrow_down.png'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 47, right: 53),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 128,
                          height: 34,
                          child: Text(
                            'Справка в бассейн',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        date,
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
        ],
      ),
    );
  }
}
