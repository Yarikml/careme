import 'package:careme24/core/ui/transmission_profile_widget.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';

class BigAvatarWidget extends StatelessWidget {
  final String avatarPath;
  const BigAvatarWidget({required this.avatarPath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.maxFinite,
          height: 203,
        ),
        Container(
          height: 143,
          width: 143,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            avatarPath,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,barrierColor: Colors.transparent,
                builder: (context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    insetPadding: EdgeInsets.zero,
                      shadowColor: Colors.grey,
                    child: Column(
                      children: [
                        TransmissionProfile(name: 'Diego'),
                        Spacer(),
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              width: 71,
              height: 29,
              decoration: BoxDecoration(
                  color: ColorConstant.green400,
                  borderRadius: BorderRadius.circular(7)),
            ),
          ),
        ),
      ],
    );
  }
}
