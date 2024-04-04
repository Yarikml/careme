import '../alert_screen/widgets/alert_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:careme24/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

final _controller = ValueNotifier<bool>(false);

class AlertScreen extends StatefulWidget {
  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  bool isSelectedSwitch = false;

bool _fromMe = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, top: 12, bottom: 10),
                    onTap: () {
                      onTapArrowleft33(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов"),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgFrame7978,
                      margin:
                          getMargin(left: 23, top: 10, right: 23, bottom: 10))
                ],
                styleType: Style.bgFillBlue60001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 14),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: MediaQuery.of(context).size.width-40,
                                  height: getVerticalSize(37),
                                  decoration: AppDecoration.outlineGray50001
                                      .copyWith(
                                      borderRadius: BorderRadius.all(Radius.circular(11))),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                       GestureDetector(
                                         onTap:(){_fromMe=!_fromMe;
                                           setState(() {

                                           });
                                           },
                                         child: CustomButton(
                                            height: getVerticalSize(29),
                                            width: MediaQuery.of(context).size.width/2-23,
                                            text: "От меня",
                                            variant: _fromMe ? ButtonVariant.FillBlue600:ButtonVariant.FillWhiteA700,
                                            shape: ButtonShape.RoundedBorder10,
                                            padding: ButtonPadding.PaddingAll9,
                                            fontStyle: _fromMe? ButtonFontStyle
                                                .MontserratSemiBold12WhiteA700:ButtonFontStyle.MontserratMedium15Gray50001
                                                 ),),
                                       GestureDetector(
                                           onTap: (){_fromMe=!_fromMe;
                                             setState(() {

                                             });},
                                           child: CustomButton(
                                            height: getVerticalSize(29),
                                            width: MediaQuery.of(context).size.width/2-23,
                                            text: "Мне",
                                            variant: _fromMe ?ButtonVariant.FillWhiteA700: ButtonVariant.FillBlue600,
                                            shape: ButtonShape.RoundedBorder10,
                                            padding: ButtonPadding.PaddingAll9,
                                            fontStyle:  _fromMe? ButtonFontStyle.MontserratMedium15Gray50001:ButtonFontStyle
                                                .MontserratSemiBold12WhiteA700)),

                                      ]))),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 14),
                                  padding: getPadding(
                                      left: 23, top: 16, right: 23, bottom: 16),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 1),
                                            child: Text("Экстренные службы",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold15Bluegray800)),
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 18, bottom: 1),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomIconButton(
                                                      height: 59,
                                                      width: 57,
                                                      variant: IconButtonVariant
                                                          .FillPink300,
                                                      shape: IconButtonShape
                                                          .RoundedBorder7,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocationRed100)),
                                                  CustomIconButton(
                                                      height: 56,
                                                      width: 57,
                                                      margin: getMargin(
                                                          left: 7, bottom: 3),
                                                      variant: IconButtonVariant
                                                          .FillIndigoA100,
                                                      shape: IconButtonShape
                                                          .RoundedBorder7,
                                                      padding: IconButtonPadding
                                                          .PaddingAll6,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFrameIndigo40056x57)),
                                                  CustomIconButton(
                                                      height: 56,
                                                      width: 57,
                                                      margin: getMargin(
                                                          left: 7, bottom: 3),
                                                      variant: IconButtonVariant
                                                          .FillYellow700,
                                                      shape: IconButtonShape
                                                          .RoundedBorder7,
                                                      padding: IconButtonPadding
                                                          .PaddingAll6,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFire)),
                                                  Spacer(),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(10),
                                                      border: Border.all(
                                                        color: ColorConstant.greenA700,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: AdvancedSwitch(
                                                      controller: _controller,
                                                      activeColor:
                                                      ColorConstant.gray100,
                                                      inactiveColor:
                                                      ColorConstant.gray100,
                                                      borderRadius: BorderRadius.all(
                                                          const Radius.circular(8)),
                                                      width: 80.0,
                                                      height: 36.0,
                                                      enabled: true,
                                                      disabledOpacity: 0.5,
                                                    ),
                                                  ),
                                                ]))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 24, top: 19),
                              child: Text("Приглашенные",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtH1)),
                          Container(
                              margin: getMargin(top: 12),
                              padding: getPadding(left: 23, right: 23),
                              decoration: AppDecoration.fillWhiteA700,
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: getVerticalSize(1));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return AlertItemWidget();
                                  })),

                          Padding(
                              padding: getPadding(left: 24, top: 19),
                              child: Text("Администраторы",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtH1)),
                          Container(
                              margin: getMargin(top: 12),
                              padding: getPadding(left: 23, right: 23),
                              decoration: AppDecoration.fillWhiteA700,
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: getVerticalSize(1));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return AlertItemWidget();
                                  })),
                          Padding(
                              padding: getPadding(left: 24, top: 17),
                              child: Text("Активные",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtH1)),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 10),
                                  padding: getPadding(
                                      left: 148,
                                      top: 36,
                                      right: 148,
                                      bottom: 36),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSearch,
                                            height: getVerticalSize(20),
                                            width: getHorizontalSize(22)),
                                        Padding(
                                            padding:
                                                getPadding(top: 10, bottom: 20),
                                            child: Text("Список пуст",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium12Gray50001))
                                      ])))
                        ])))));
  }

  onTapArrowleft33(BuildContext context) {
    Navigator.pop(context);
  }
}


class AdvancedSwitch extends StatefulWidget {
  const AdvancedSwitch({
    Key? key,
    this.controller,
    this.activeColor = const Color(0xFF4CAF50),
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
  }) : super(key: key);

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

    _controller = widget.controller ?? ValueNotifier<bool>(false);
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
                          margin: const EdgeInsets.all(2),
                          width: _thumbSize - 4,
                          height: _thumbSize - 4,
                          child: widget.thumb ??
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConstant.greenA70002,
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
      _controller.value = !_controller.value;
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

