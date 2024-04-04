import 'package:flutter/material.dart';

class NoContactWidget extends StatelessWidget {
  const NoContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset('assets/images/Search.png'),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              'Список пуст',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff8E969B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
