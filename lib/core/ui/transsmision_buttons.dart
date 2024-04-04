// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TransmissionButton extends StatelessWidget {
  final String text;
  final LinearGradient gradient;
  const TransmissionButton({
    Key? key,
    required this.text,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 142,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), gradient: gradient),
      child: Text(text),
    );
  }
}
