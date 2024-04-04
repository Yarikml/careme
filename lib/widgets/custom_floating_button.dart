import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton(
      {this.shape,
      this.variant,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.child});

  FloatingButtonShape? shape;

  FloatingButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildFabWidget(),
          )
        : _buildFabWidget();
  }

  _buildFabWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FloatingActionButton(
        backgroundColor: _setColor(),
        onPressed: onTap,
        child: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          decoration: _buildDecoration(),
          child: child,
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setColor() {
    switch (variant) {
      case FloatingButtonVariant.GradientBlue500LightblueA200:
        return null;
      default:
        return ColorConstant.pink60001;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case FloatingButtonVariant.GradientBlue500LightblueA200:
        return LinearGradient(
          begin: Alignment(
            0.97,
            0.94,
          ),
          end: Alignment(
            0.22,
            0.05,
          ),
          colors: [
            ColorConstant.blue500,
            ColorConstant.lightBlueA200,
          ],
        );
      case FloatingButtonVariant.FillPink60001:
        return null;
      default:
        return false;
    }
  }
}

enum FloatingButtonShape {
  CircleBorder29,
}
enum FloatingButtonVariant {
  FillPink60001,
  GradientBlue500LightblueA200,
}
