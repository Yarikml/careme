import 'package:flutter/material.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../widgets/custom_image_view.dart';

class WindowAtHour extends StatelessWidget {
  late String windDirection;
  late String windPower;

  WindowAtHour({
    required this.windDirection,
    required this.windPower,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.0),
      padding: getPadding(
        left: 9,
        top: 7,
        right: 9,
        bottom: 7,
      ),
      decoration: AppDecoration.outlineGray500013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFrame8001Blue400,
            height: getSize(
              16,
            ),
            width: getSize(
              16,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Text(
              windDirection,
              style: AppStyle.txtMontserratRegular12Gray50001,
            ),
          ),
          Text(
            windPower,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratMedium12,
          ),
        ],
      ),
    );
  }
}
