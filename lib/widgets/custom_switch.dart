import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(36),
        width: getHorizontalSize(80),
        toggleSize: 36,
        borderRadius: getHorizontalSize(
          8.00,
        ),
        switchBorder: Border.all(
          color: ColorConstant.gray50001,
        ),
        activeToggleColor: ColorConstant.gray50001,
        inactiveToggleColor: ColorConstant.gray50001,
        inactiveColor: ColorConstant.gray100,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
