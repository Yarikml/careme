import 'package:careme24/auth/widgets/pages/login_page.dart';
import 'package:careme24/auth/widgets/pages/registration_page.dart';
import 'package:careme24/auth/widgets/pages/start_page.dart';
import 'package:careme24/auth/widgets/pages/verify_code_page.dart';
import 'package:flutter/material.dart';
import 'package:careme24/presentation/home_screen/home_screen.dart';

import 'package:careme24/presentation/home_four_screen/home_four_screen.dart';
import 'package:careme24/presentation/home_two_screen/home_two_screen.dart';
import 'package:careme24/presentation/home_one_screen/home_one_screen.dart';

import 'package:careme24/presentation/button_call_police_two_screen/button_call_police_two_screen.dart';
import 'package:careme24/presentation/button_call_policecall_activ_item_screen/button_call_policecall_activ_item_screen.dart';
import 'package:careme24/presentation/button_call_police_three_screen/call_a_police.dart';
import 'package:careme24/presentation/button_call_police_one_screen/button_call_police_one_screen.dart';
import 'package:careme24/presentation/plots_police_screen/plots_police_screen.dart';
import 'package:careme24/presentation/button_honey_call_activ_item_two_screen/button_honey_call_activ_item_two_screen.dart';
import 'package:careme24/presentation/button_honey_call_activ_item_one_screen/button_honey_call_activ_item_one_screen.dart';
import 'package:careme24/presentation/plots_mes_one_screen/plots_mes_one_screen.dart';
import 'package:careme24/presentation/plots_mes_screen/call_a_mes.dart';

import 'package:careme24/presentation/waiting_window_screen/waiting_window_screen.dart';

import 'package:careme24/presentation/communication_team_screen/communication_team_screen.dart';
import 'package:careme24/presentation/tracking_screen/tracking_screen.dart';
import 'package:careme24/presentation/button_honey_call_screen/call_an_ambulance.dart';
import 'package:careme24/presentation/button_honey_call_two_screen/button_honey_call_two_screen.dart';
import 'package:careme24/presentation/button_honey_call_one_screen/button_honey_call_one_screen.dart';
import 'package:careme24/presentation/button_honey_call_activ_item_three_screen/button_honey_call_activ_item_three_screen.dart';
import 'package:careme24/presentation/hospitals_screen/hospitals_screen.dart';

import 'package:careme24/presentation/button_honey_call_activ_item_screen/button_honey_call_activ_item_screen.dart';
import 'package:careme24/presentation/button_call_police_screen/button_call_police_screen.dart';
import 'package:careme24/presentation/news_button_container_screen/news_button_container_screen.dart';
import 'package:careme24/presentation/news_read_screen/news_read_screen.dart';
import 'package:careme24/presentation/goods_new_screen/goods_new_screen.dart';
import 'package:careme24/presentation/goods_promotion_screen/goods_promotion_screen.dart';

import 'package:careme24/presentation/one_screen/one_screen.dart';

import 'package:careme24/presentation/two_screen/two_screen.dart';
import 'package:careme24/presentation/alert_screen/alert_screen.dart';

import 'package:careme24/presentation/call_screen/call_screen.dart';
import 'package:careme24/presentation/call_activ_screen/call_activ_screen.dart';
import 'package:careme24/presentation/call_activ_button_screen/call_activ_button_screen.dart';
import 'package:careme24/presentation/call_activ_video_screen/call_activ_video_screen.dart';
import 'package:careme24/presentation/call_sound_off_two_screen/call_sound_off_two_screen.dart';
import 'package:careme24/presentation/call_sound_off_one_screen/call_sound_off_one_screen.dart';
import 'package:careme24/presentation/call_sound_off_screen/call_sound_off_screen.dart';

import 'package:careme24/presentation/general_information_screen/general_information_screen.dart';
import 'package:careme24/presentation/shop_screen/shop_screen.dart';
import 'package:careme24/presentation/goods_more_screen/goods_more_screen.dart';
import 'package:careme24/presentation/goods_more_one_screen/goods_more_one_screen.dart';
import 'package:careme24/presentation/goods_basket_screen/goods_basket_screen.dart';
import 'package:careme24/presentation/goods_favorites_screen/goods_favorites_screen.dart';
import 'package:careme24/presentation/goods_orders_expected_screen/goods_orders_expected_screen.dart';

import 'package:careme24/presentation/about_order_screen/about_order_screen.dart';
import 'package:careme24/presentation/heckout_screen/heckout_screen.dart';
import 'package:careme24/presentation/payment_defoult_screen/payment_defoult_screen.dart';
import 'package:careme24/presentation/payment_completed_screen/payment_completed_screen.dart';
import 'package:careme24/presentation/payment_error_screen/payment_error_screen.dart';
import 'package:careme24/presentation/payment_failed_screen/payment_failed_screen.dart';
import 'package:careme24/presentation/payment_successful_screen/payment_successful_screen.dart';

import 'package:careme24/presentation/confirmation_order_finish_screen/confirmation_order_finish_screen.dart';
import 'package:careme24/presentation/quality_control_defoult_screen/quality_control_defoult_screen.dart';

import 'package:careme24/presentation/payment_successful_one_screen/payment_successful_one_screen.dart';
import 'package:careme24/presentation/prehistoric_phenomenon_air_pollution_map_screen/prehistoric_phenomenon_air_pollution_map_screen.dart';

import 'package:careme24/presentation/prehistoric_phenomenon_air_pollution_one_screen/prehistoric_phenomenon_air_pollution_one_screen.dart';

import 'package:careme24/presentation/prehistoric_phenomenon_heat_screen/prehistoric_phenomenon_heat_screen.dart';
import 'package:careme24/presentation/prehistoric_phenomenon_heat_one_screen/prehistoric_phenomenon_heat_one_screen.dart';
import 'package:careme24/presentation/prehistoric_phenomenon_air_raid_alert_screen/prehistoric_phenomenon_air_raid_alert_screen.dart';
import 'package:careme24/presentation/prehistoric_phenomenon_hail_one_screen/prehistoric_phenomenon_hail_one_screen.dart';
import 'package:careme24/presentation/prehistoric_phenomenon_fire_screen/prehistoric_phenomenon_fire_screen.dart';
import 'package:careme24/presentation/prehistoric_phenomenon_fire_two_screen/prehistoric_phenomenon_fire_two_screen.dart';
import 'package:careme24/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../about_hospital.dart';
import '../med_home_page.dart';
import '../presentation/news_button_page/news_button_page.dart';

class AppRoutes {
  static const String startScreen = '/start';
  static const String registerScreen = '/register';
  static const String loginScreen = '/login';
  static const String verificationScreen = '/verification';
  static const String homeScreen = '/home_screen';

  static const String homeThreeScreen = '/home_three_screen';

  static const String homeFourScreen = '/home_four_screen';

  static const String homeTwoScreen = '/home_two_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String waitingWindowFiveScreen = '/waiting_window_five_screen';

  static const String waitingWindowThreeScreen = '/waiting_window_three_screen';

  static const String trackingOneScreen = '/tracking_one_screen';

  static const String trackingTwoScreen = '/tracking_two_screen';

  static const String buttonCallPoliceTwoScreen =
      '/button_call_police_two_screen';

  static const String buttonCallPolicecallActivItemScreen =
      '/button_call_policecall_activ_item_screen';

  static const String buttonCallPoliceThreeScreen =
      '/button_call_police_three_screen';

  static const String buttonCallPoliceOneScreen =
      '/button_call_police_one_screen';

  static const String plotsPoliceScreen = '/plots_police_screen';

  static const String buttonHoneyCallActivItemTwoScreen =
      '/button_honey_call_activ_item_two_screen';

  static const String buttonHoneyCallActivItemOneScreen =
      '/button_honey_call_activ_item_one_screen';

  static const String plotsMesOneScreen = '/plots_mes_one_screen';

  static const String plotsMesScreen = '/plots_mes_screen';
  static const String aboutHospital = '/about_hospital';

  static const String k18Screen = '/k18_screen';
  static const String medHomePage = '/med_home_page';

  static const String waitingWindowScreen = '/waiting_window_screen';

  static const String waitingWindowTwoScreen = '/waiting_window_two_screen';

  static const String communicationTeamScreen = '/communication_team_screen';

  static const String trackingScreen = '/tracking_screen';

  static const String buttonHoneyCallScreen = '/button_honey_call_screen';

  static const String buttonHoneyCallTwoScreen =
      '/button_honey_call_two_screen';

  static const String buttonHoneyCallOneScreen =
      '/button_honey_call_one_screen';

  static const String buttonHoneyCallActivItemThreeScreen =
      '/button_honey_call_activ_item_three_screen';

  static const String hospitalsScreen = '/hospitals_screen';

  static const String waitingWindowFourScreen = '/waiting_window_four_screen';

  static const String waitingWindowOneScreen = '/waiting_window_one_screen';

  static const String buttonHoneyCallActivItemScreen =
      '/button_honey_call_activ_item_screen';

  static const String buttonCallPoliceScreen = '/button_call_police_screen';

  static const String newsButtonPage = '/news_button_page';

  static const String newsButtonContainerScreen =
      '/news_button_container_screen';

  static const String newsReadScreen = '/news_read_screen';

  static const String goodsNewScreen = '/goods_new_screen';

  static const String goodsPromotionScreen = '/goods_promotion_screen';

  static const String k37Screen = '/title_reg_page';

  static const String oneScreen = '/one_screen';

  static const String threeScreen = '/three_screen';

  static const String fourScreen = '/four_screen';

  static const String twoScreen = '/two_screen';

  static const String alertScreen = '/alert_screen';

  static const String alertCallScreen = '/alert_call_screen';

  static const String callScreen = '/call_screen';

  static const String callActivScreen = '/call_activ_screen';

  static const String callActivButtonScreen = '/call_activ_button_screen';

  static const String callActivVideoScreen = '/call_activ_video_screen';

  static const String callSoundOffTwoScreen = '/call_sound_off_two_screen';

  static const String callSoundOffOneScreen = '/call_sound_off_one_screen';

  static const String callSoundOffScreen = '/call_sound_off_screen';

  static const String alertAdminSettingsScreen = '/alert_admin_settings_screen';

  static const String alertAdminSettingsOneScreen =
      '/alert_admin_settings_one_screen';

  static const String generalInformationScreen = '/general_information_screen';

  static const String shopScreen = '/shop_screen';

  static const String goodsMoreScreen = '/goods_more_screen';

  static const String goodsMoreOneScreen = '/goods_more_one_screen';

  static const String goodsBasketScreen = '/goods_basket_screen';

  static const String goodsFavoritesScreen = '/goods_favorites_screen';

  static const String goodsOrdersExpectedScreen =
      '/goods_orders_expected_screen';

  static const String goodsOrdersCompletedScreen =
      '/goods_orders_completed_screen';

  static const String goodsOrdersCanceledScreen =
      '/goods_orders_canceled_screen';

  static const String aboutOrderScreen = '/about_order_screen';

  static const String heckoutScreen = '/heckout_screen';

  static const String paymentDefoultScreen = '/payment_defoult_screen';

  static const String paymentCompletedScreen = '/payment_completed_screen';

  static const String paymentErrorScreen = '/payment_error_screen';

  static const String paymentFailedScreen = '/payment_failed_screen';

  static const String paymentSuccessfulScreen = '/payment_successful_screen';

  static const String cartDefoultScreen = '/cart_defoult_screen';

  static const String cartAddedScreen = '/cart_added_screen';

  static const String confirmationOrderFinishScreen =
      '/confirmation_order_finish_screen';

  static const String qualityControlDefoultScreen =
      '/quality_control_defoult_screen';

  static const String qualityControlScreen = '/quality_control_screen';

  static const String paymentSuccessfulOneScreen =
      '/payment_successful_one_screen';

  static const String prehistoricPhenomenonAirPollutionMapScreen =
      '/prehistoric_phenomenon_air_pollution_map_screen';

  static const String prehistoricPhenomenonAirPollutionScreen =
      '/prehistoric_phenomenon_air_pollution_screen';

  static const String prehistoricPhenomenonAirPollutionOneScreen =
      '/prehistoric_phenomenon_air_pollution_one_screen';

  static const String prehistoricPhenomenonHeatThreeScreen =
      '/prehistoric_phenomenon_heat_three_screen';

  static const String prehistoricPhenomenonHeatScreen =
      '/prehistoric_phenomenon_heat_screen';

  static const String prehistoricPhenomenonHeatOneScreen =
      '/prehistoric_phenomenon_heat_one_screen';

  static const String prehistoricPhenomenonHeatTwoScreen =
      '/prehistoric_phenomenon_heat_two_screen';

  static const String prehistoricPhenomenonColdTwoScreen =
      '/prehistoric_phenomenon_cold_two_screen';

  static const String prehistoricPhenomenonHeatFourScreen =
      '/prehistoric_phenomenon_heat_four_screen';

  static const String prehistoricPhenomenonColdScreen =
      '/prehistoric_phenomenon_cold_screen';

  static const String prehistoricPhenomenonColdOneScreen =
      '/prehistoric_phenomenon_cold_one_screen';

  static const String prehistoricPhenomenonPressureScreen =
      '/prehistoric_phenomenon_pressure_screen';

  static const String prehistoricPhenomenonPressureTwoScreen =
      '/prehistoric_phenomenon_pressure_two_screen';

  static const String prehistoricPhenomenonPressureOneScreen =
      '/prehistoric_phenomenon_pressure_one_screen';

  static const String prehistoricPhenomenonVirusScreen =
      '/prehistoric_phenomenon_virus_screen';

  static const String prehistoricPhenomenonVirusOneScreen =
      '/prehistoric_phenomenon_virus_one_screen';

  static const String prehistoricPhenomenonWindScreen =
      '/prehistoric_phenomenon_wind_screen';

  static const String prehistoricPhenomenonWindOneScreen =
      '/prehistoric_phenomenon_wind_one_screen';

  static const String prehistoricPhenomenonWindTwoScreen =
      '/prehistoric_phenomenon_wind_two_screen';

  static const String prehistoricPhenomenonAirRaidAlertOneScreen =
      '/prehistoric_phenomenon_air_raid_alert_one_screen';

  static const String prehistoricPhenomenonAirRaidAlertScreen =
      '/prehistoric_phenomenon_air_raid_alert_screen';

  static const String prehistoricPhenomenonAirRaidAlerMapScreen =
      '/prehistoric_phenomenon_air_raid_aler_map_screen';

  static const String prehistoricPhenomenonIceOneScreen =
      '/prehistoric_phenomenon_ice_one_screen';

  static const String prehistoricPhenomenonIceTwoScreen =
      '/prehistoric_phenomenon_ice_two_screen';

  static const String prehistoricPhenomenonIceScreen =
      '/prehistoric_phenomenon_ice_screen';

  static const String prehistoricPhenomenonHailScreen =
      '/prehistoric_phenomenon_hail_screen';

  static const String prehistoricPhenomenonHailOneScreen =
      '/prehistoric_phenomenon_hail_one_screen';

  static const String prehistoricPhenomenonHailTwoScreen =
      '/prehistoric_phenomenon_hail_two_screen';

  static const String prehistoricPhenomenonEarthquakeScreen =
      '/prehistoric_phenomenon_earthquake_screen';

  static const String prehistoricPhenomenonEarthquakeOneScreen =
      '/prehistoric_phenomenon_earthquake_one_screen';

  static const String prehistoricPhenomenonEruptionScreen =
      '/prehistoric_phenomenon_eruption_screen';

  static const String prehistoricPhenomenonEruptionOneScreen =
      '/prehistoric_phenomenon_eruption_one_screen';

  static const String prehistoricPhenomenonRockfallOneScreen =
      '/prehistoric_phenomenon_rockfall_one_screen';

  static const String prehistoricPhenomenonRockfallScreen =
      '/prehistoric_phenomenon_rockfall_screen';

  static const String prehistoricPhenomenonFloodScreen =
      '/prehistoric_phenomenon_flood_screen';

  static const String prehistoricPhenomenonFloodOneScreen =
      '/prehistoric_phenomenon_flood_one_screen';

  static const String prehistoricPhenomenonFireScreen =
      '/prehistoric_phenomenon_fire_screen';

  static const String prehistoricPhenomenonFireTwoScreen =
      '/prehistoric_phenomenon_fire_two_screen';

  static const String prehistoricPhenomenonFireOneScreen =
      '/prehistoric_phenomenon_fire_one_screen';

  static const String prehistoricPhenomenonRadiationScreen =
      '/prehistoric_phenomenon_radiation_screen';

  static const String prehistoricPhenomenonRadiationOneScreen =
      '/prehistoric_phenomenon_radiation_one_screen';

  static const String prehistoricPhenomenonNuclearPollutionOneScreen =
      '/prehistoric_phenomenon_nuclear_pollution_one_screen';

  static const String prehistoricPhenomenonNuclearPollutionThreeScreen =
      '/prehistoric_phenomenon_nuclear_pollution_three_screen';

  static const String prehistoricPhenomenonNuclearPollutionTwoScreen =
      '/prehistoric_phenomenon_nuclear_pollution_two_screen';

  static const String prehistoricPhenomenonNuclearPollutionScreen =
      '/prehistoric_phenomenon_nuclear_pollution_screen';

  static const String prehistoricPhenomenonAvalancheOneScreen =
      '/prehistoric_phenomenon_avalanche_one_screen';

  static const String prehistoricPhenomenonAvalancheScreen =
      '/prehistoric_phenomenon_avalanche_screen';

  static const String prehistoricPhenomenonTerrorOneScreen =
      '/prehistoric_phenomenon_terror_one_screen';

  static const String prehistoricPhenomenonTerrorScreen =
      '/prehistoric_phenomenon_terror_screen';

  static const String prehistoricPhenomenonTornadoOneScreen =
      '/prehistoric_phenomenon_tornado_one_screen';

  static const String prehistoricPhenomenonTornadoScreen =
      '/prehistoric_phenomenon_tornado_screen';

  static const String prehistoricPhenomenonFogScreen =
      '/prehistoric_phenomenon_fog_screen';

  static const String prehistoricPhenomenonFogOneScreen =
      '/prehistoric_phenomenon_fog_one_screen';

  static const String prehistoricPhenomenonTsunamiOneScreen =
      '/prehistoric_phenomenon_tsunami_one_screen';

  static const String prehistoricPhenomenonTsunamiScreen =
      '/prehistoric_phenomenon_tsunami_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    startScreen: (context) => StartPage(),
    registerScreen: (context) => RegistrationPage(),
    loginScreen: (context) => LoginPage(),
    verificationScreen: (context) => VerifyCodePage(),
    homeScreen: (context) => HomeScreen(0),
    homeFourScreen: (context) => HomeFourScreen(),
    homeTwoScreen: (context) => HomeTwoScreen(),
    homeOneScreen: (context) => HomeOneScreen(),
    buttonCallPoliceTwoScreen: (context) => ButtonCallPoliceTwoScreen(),
    buttonCallPolicecallActivItemScreen: (context) =>
        ButtonCallPolicecallActivItemScreen(),
    buttonCallPoliceOneScreen: (context) => ButtonCallPoliceOneScreen(),
    buttonHoneyCallActivItemTwoScreen: (context) =>
        ButtonHoneyCallActivItemTwoScreen(),
    buttonHoneyCallActivItemOneScreen: (context) =>
        ButtonHoneyCallActivItemOneScreen(),
    plotsMesOneScreen: (context) => PlotsMesOneScreen(),
    communicationTeamScreen: (context) => CommunicationTeamScreen(),
    trackingScreen: (context) => TrackingScreen(),
    buttonHoneyCallTwoScreen: (context) => ButtonHoneyCallTwoScreen(),
    buttonHoneyCallOneScreen: (context) => ButtonHoneyCallOneScreen(),
    buttonHoneyCallActivItemThreeScreen: (context) =>
        ButtonHoneyCallActivItemThreeScreen(),
    hospitalsScreen: (context) => HospitalsScreen(),
    buttonHoneyCallActivItemScreen: (context) =>
        ButtonHoneyCallActivItemScreen(),
    buttonCallPoliceScreen: (context) => ButtonCallPoliceScreen(),
    newsButtonContainerScreen: (context) => NewsButtonContainerScreen(),
    newsReadScreen: (context) => NewsReadScreen(),
    goodsNewScreen: (context) => GoodsNewScreen(),
    goodsPromotionScreen: (context) => GoodsPromotionScreen(),
    oneScreen: (context) => OneScreen(),
    twoScreen: (context) => TwoScreen(),
    alertScreen: (context) => AlertScreen(),
    callScreen: (context) => CallScreen(),
    callActivScreen: (context) => CallActivScreen(),
    callActivButtonScreen: (context) => CallActivButtonScreen(),
    callActivVideoScreen: (context) => CallActivVideoScreen(),
    callSoundOffTwoScreen: (context) => CallSoundOffTwoScreen(),
    callSoundOffOneScreen: (context) => CallSoundOffOneScreen(),
    callSoundOffScreen: (context) => CallSoundOffScreen(),
    generalInformationScreen: (context) => GeneralInformationScreen(),
    shopScreen: (context) => ShopScreen(),
    goodsMoreScreen: (context) => GoodsMoreScreen(),
    goodsMoreOneScreen: (context) => GoodsMoreOneScreen(),
    goodsBasketScreen: (context) => GoodsBasketScreen(),
    goodsFavoritesScreen: (context) => GoodsFavoritesScreen(),
    goodsOrdersExpectedScreen: (context) => GoodsOrdersExpectedScreen(),
    aboutOrderScreen: (context) => AboutOrderScreen(),
    heckoutScreen: (context) => HeckoutScreen(),
    paymentDefoultScreen: (context) => PaymentDefoultScreen(),
    paymentCompletedScreen: (context) => PaymentCompletedScreen(),
    paymentErrorScreen: (context) => PaymentErrorScreen(),
    paymentFailedScreen: (context) => PaymentFailedScreen(),
    paymentSuccessfulScreen: (context) => PaymentSuccessfulScreen(),
    confirmationOrderFinishScreen: (context) => ConfirmationOrderFinishScreen(),
    qualityControlDefoultScreen: (context) => QualityControlDefoultScreen(),
    paymentSuccessfulOneScreen: (context) => PaymentSuccessfulOneScreen(),
    prehistoricPhenomenonAirPollutionMapScreen: (context) =>
        PrehistoricPhenomenonAirPollutionMapScreen(),
    prehistoricPhenomenonAirPollutionOneScreen: (context) =>
        PrehistoricPhenomenonAirPollutionOneScreen(),
    prehistoricPhenomenonHeatScreen: (context) =>
        PrehistoricPhenomenonHeatScreen(),
    prehistoricPhenomenonHeatOneScreen: (context) =>
        PrehistoricPhenomenonHeatOneScreen(),
    prehistoricPhenomenonAirRaidAlertScreen: (context) =>
        PrehistoricPhenomenonAirRaidAlertScreen(),
    prehistoricPhenomenonHailOneScreen: (context) =>
        PrehistoricPhenomenonHailOneScreen(),
    prehistoricPhenomenonFireScreen: (context) =>
        PrehistoricPhenomenonFireScreen(),
    prehistoricPhenomenonFireTwoScreen: (context) =>
        PrehistoricPhenomenonFireTwoScreen(),
    k37Screen: (context) => Container(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    medHomePage: (context) => HoneyMainPage(),
    aboutHospital: (context) => AboutHospital(),
  };
}
