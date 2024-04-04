import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../../custom_widget_my/for_whom.dart';
import '../../custom_widget_my/paid_service_swither.dart';
import '../../custom_widget_my/reason_police.dart';

final _controller = ValueNotifier<bool>(false);
bool _checked = false;
bool select_reason = false;
Color select_color = Color.fromRGBO(254, 246, 225, 100);

final List<String> reasonText = <String>[
  "3.13. Мелкое хулиганство",
  "3.11. Проведения демонстрации, митинга,пикетирования, шествия или собрания",
  "3.11. Пропаганда либо публич. демонстрирование нацистской атрибутики",
  "3.29. Возбуждение ненависти либо вражды",
  "3.11. Кража",
  "M1.5. Мешают спать по ночам или вызывают беспорядки в общественном месте",
  "3.12. Повреждения имущества",
  "3.28. Тепловой удар",
  "3.12. Приступ астмы, проблемы с дыханием",
  "C7",
  "C8"
];

final List<bool> reasonDisable = <bool>[
  false,
  false,
  true,
  true,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

class ButtonCallPoliceScreen extends StatefulWidget {
  @override
  State<ButtonCallPoliceScreen> createState() =>
      _ButtonCallPoliceScreenState();
}

class _ButtonCallPoliceScreenState extends State<ButtonCallPoliceScreen> {
  bool isSelectedSwitch = false;

  TextEditingController componentfortyController = TextEditingController();

  TextEditingController frame7304Controller = TextEditingController();

  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        if (_controller.value) {
          _checked = true;
        } else {
          _checked = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: ()async{


      if (true) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(AppRoutes.homeScreen, (Route<dynamic> route) => false);
        return false;
      } else {
        return true;
      }
    },
        child: SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, top: 12, bottom: 20),
                    onTap: () {
                      onTapArrowleft19(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов полиции"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1, top: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ForWhom(name: 'Мне',),
                                PaySwitcher(),
                              ])),
                      Container(
                        padding: getPadding(top: 14),
                        width: MediaQuery.of(context).size.width - 40,
                        height: MediaQuery.of(context).size.height - 180,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  color: Color.fromRGBO(178, 218, 255, 100),
                                ),
                                width: MediaQuery.of(context).size.width - 40,
                                height: 80,
                                child: Padding(
                                  padding: getPadding(left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Причина вызова",
                                        style: AppStyle.txtMontserratSemiBold19,
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgSettingsLightBlue900,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: ListView.separated(
                                    itemCount: reasonText.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return ReasonPolice(
                                        text: reasonText[index],
                                        disable: reasonDisable[index],
                                        backgroundColor: Colors.white,
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) =>
                                    const Divider(indent: 0, height: 1),
                                  ))
                            ]),
                      )
                    ])))));
  }

  onTapArrowleft19(BuildContext context) {
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
                                  color: ColorConstant.gray50001,
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

