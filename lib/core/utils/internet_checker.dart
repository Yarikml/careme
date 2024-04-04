import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> isConnectedToInternet() async {
  final res = await Connectivity().checkConnectivity();
  return res == ConnectivityResult.wifi || res == ConnectivityResult.mobile; 
} 