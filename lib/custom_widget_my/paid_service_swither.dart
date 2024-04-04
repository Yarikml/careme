import 'package:flutter/material.dart';
import '../core/constants/constants.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_style.dart';



class PaySwitcher extends StatefulWidget {
  final bool ?isVisible;
    const PaySwitcher({
      this.isVisible =true,
      
      Key? key}) : super(key: key);
  
  @override
  State<PaySwitcher> createState() => _PaySwitcherState();
}

class _PaySwitcherState extends State<PaySwitcher> {
  final _controller = ValueNotifier<bool>(VersionConstant.isPaidSubscription);
  TextStyle textStyle = VersionConstant.isPaidSubscription == true ? AppStyle.txtMontserratSemiBold12GreenA700 : AppStyle.txtMontserratSemiBold12Gray50001;
  Color borderColor = VersionConstant.isPaidSubscription == true ? ColorConstant.greenA70002 : ColorConstant.gray50001;
  double borderWidth = 1.5;
  callBackChangeColor() {
    setState(() {
      if (VersionConstant.isPaidSubscription) {
        textStyle = AppStyle.txtMontserratSemiBold12GreenA700;
        borderColor = ColorConstant.greenA70002;
        borderWidth = 2;
      } else {
        textStyle = AppStyle.txtMontserratSemiBold12Gray50001;
        borderColor = ColorConstant.gray50001;
        borderWidth = 1.5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
   widget.isVisible==true?   Text("Платная услуга",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: textStyle):SizedBox(),
      Container(
        margin: getMargin(top: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: AdvancedSwitch(
          controller: _controller,
          activeColor: ColorConstant.gray100,
          inactiveColor: ColorConstant.gray100,
          borderRadius: BorderRadius.all(const Radius.circular(8)),
          width: 80.0,
          height: 36.0,
          enabled: true,
          disabledOpacity: 0.5,
          callbackF: callBackChangeColor,
        ),
      ),
    ]);
  }
}

class AdvancedSwitch extends StatefulWidget {
  late Function callbackF;

  AdvancedSwitch(
      {Key? key,
      this.controller,
      this.activeColor = const Color(0xFF9E9E9E),
      this.inactiveColor = const Color(0xFF9E9E9E),
      this.activeChild,
      this.inactiveChild,
      this.activeImage,
      this.inactiveImage,
      this.borderRadius = const BorderRadius.all(const Radius.circular(15)),
      this.width = 50.0,
      this.height = 30.0,
      this.enabled = true,
      this.disabledOpacity = 0.5,
      this.thumb,
        /// вот вроже бы переменная типа функции которую свитч принимает
      required this.callbackF})
      : super(key: key);

  /// Determines if widget is enabled
  final bool enabled;

  /// Determines current state.
  final ValueNotifier<bool>? controller;

  /// Determines background color for the active state.
  final Color activeColor;

  /// Determines background color for the inactive state.
  final Color inactiveColor;

  /// Determines label for the active state.
  final Widget? activeChild;

  /// Determines label for the inactive state.
  final Widget? inactiveChild;

  /// Determines background image for the active state.
  final ImageProvider? activeImage;

  /// Determines background image for the inactive state.
  final ImageProvider? inactiveImage;

  /// Determines border radius.
  final BorderRadius borderRadius;

  /// Determines width.
  final double width;

  /// Determines height.
  final double height;

  /// Determines opacity of disabled control.
  final double disabledOpacity;

  /// Thumb widget.
  final Widget? thumb;

  @override
  _AdvancedSwitchState createState() => _AdvancedSwitchState();
}

class _AdvancedSwitchState extends State<AdvancedSwitch>
    with SingleTickerProviderStateMixin {
  static const _duration = Duration(milliseconds: 250);
  late ValueNotifier<bool> _controller;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<Color?> _colorAnimation;
  late double _thumbSize;

  @override
  void initState() {
    super.initState();

    _controller = ValueNotifier<bool>(VersionConstant.isPaidSubscription);
    _controller.addListener(_handleControllerValueChanged);

    _animationController = AnimationController(
      vsync: this,
      duration: _duration,
      value: _controller.value ? 1.0 : 0.0,
    );

    _initAnimation();
  }

  @override
  void didUpdateWidget(covariant AdvancedSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);

    _initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    final labelSize = widget.width - _thumbSize;
    final containerSize = labelSize * 2 + _thumbSize;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _handlePressed,
        child: Opacity(
          opacity: widget.enabled ? 1 : widget.disabledOpacity,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (_, child) {
              return ClipRRect(
                borderRadius: widget.borderRadius,
                clipBehavior: Clip.antiAlias,
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  color: _colorAnimation.value,
                  child: child,
                ),
              );
            },
            child: Stack(
              children: [
                if (widget.activeImage != null || widget.inactiveImage != null)
                  ValueListenableBuilder<bool>(
                    valueListenable: _controller,
                    builder: (_, __, ___) {
                      return AnimatedCrossFade(
                        crossFadeState: _controller.value
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: _duration,
                        firstChild: Image(
                          width: widget.width,
                          height: widget.height,
                          image: widget.inactiveImage ?? widget.activeImage!,
                          fit: BoxFit.cover,
                        ),
                        secondChild: Image(
                          width: widget.width,
                          height: widget.height,
                          image: widget.activeImage ?? widget.inactiveImage!,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: _slideAnimation.value,
                      child: child,
                    );
                  },
                  child: OverflowBox(
                    minWidth: containerSize,
                    maxWidth: containerSize,
                    minHeight: widget.height,
                    maxHeight: widget.height,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconTheme(
                          data: const IconThemeData(
                            color: Color(0xFFFFFFFF),
                            size: 20,
                          ),
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            child: Container(
                              width: labelSize,
                              height: widget.height,
                              alignment: Alignment.center,
                              child: widget.activeChild,
                            ),
                          ),
                        ),
                        Container(
                          width: _thumbSize,
                          height: _thumbSize,
                          child: widget.thumb ??
                              Container(
                                decoration: BoxDecoration(
                                  color: VersionConstant.isPaidSubscription == true ? ColorConstant.greenA70002 : ColorConstant.gray500,
                                  borderRadius: widget.borderRadius
                                      .subtract(BorderRadius.circular(1)),
                                ),
                              ),
                        ),
                        IconTheme(
                          data: const IconThemeData(
                            color: Color(0xFFFFFFFF),
                            size: 20,
                          ),
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            child: Container(
                              width: labelSize,
                              height: widget.height,
                              alignment: Alignment.center,
                              child: widget.inactiveChild,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _initAnimation() {
    _thumbSize = widget.height;
    final offset = widget.width / 2 - _thumbSize / 2;

    final animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(-offset, 0),
      end: Offset(offset, 0),
    ).animate(animation);

    _colorAnimation = ColorTween(
      begin: widget.inactiveColor,
      end: widget.activeColor,
    ).animate(animation);
  }

  void _handleControllerValueChanged() {
    if (_controller.value) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  void _handlePressed() {
    if (widget.controller != null && widget.enabled) {
      setState(() {
        VersionConstant.changeBool();
        widget.callbackF();
        _controller.value = VersionConstant.isPaidSubscription;
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_handleControllerValueChanged);

    if (widget.controller == null) {
      _controller.dispose();
    }

    _animationController.dispose();

    super.dispose();
  }
}
