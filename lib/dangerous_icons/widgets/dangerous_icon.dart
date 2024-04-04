import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';

class DangerousIcon extends StatelessWidget {
  final String warningName;
  final String infoOfWarning;
  final VoidCallback onTap;

  DangerousIcon({
    required this.warningName,
    required this.infoOfWarning,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              warningName,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: AppStyle.txtMontserratMedium12,
            ),
          ),
          Container(
            height: 79,
            width: 79,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlueAccent,
            ),
          ),
          //Image.asset("assets/images/harmfully.png"),
          Padding(
              padding: getPadding(top: 7),
              child: Text(infoOfWarning,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold12))
        ],
      ),
    );
  }
}
