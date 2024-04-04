import 'dart:async';
import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:careme24/dangerous_icons/bloc/forecast_bloc/forecast_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:careme24/routes/app_routes.dart';
import 'package:careme24/locator_service.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:permission_handler/permission_handler.dart';

import 'auth/bloc/auth_bloc/auth_bloc.dart';
import 'core/constants/app_colors.dart';
import 'locator_service.dart';

List<CameraDescription> cameras = [];

void main() => runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      await di.init();
      Map<Permission, PermissionStatus> statuses = await [
        Permission.locationWhenInUse,
        Permission.camera,
        Permission.storage,
      ].request();
      initializeDateFormatting('ru_RU', null).then((_) => runApp(MyApp()));
    }, (error, stack) {
      log(error.toString());
      log(stack.toString());
    });

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl<AuthBloc>(),
        ),
        BlocProvider<ForecastBloc>(
          create: (context) => sl<ForecastBloc>(),
        ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) => state.mapOrNull(
          authorized: (authorizedState) => context.read<ForecastBloc>().add(
                ForecastEvent.getForecastInfo(
                  lat: authorizedState.position.latitude,
                  lng: authorizedState.position.longitude,
                ),
              ),
        ),
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: AppColors.primaryColor,
            scaffoldBackgroundColor: Color.fromRGBO(244, 245, 247, 1),
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.primaryColor,
              iconTheme: IconThemeData(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            textTheme: TextTheme(
                bodySmall: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: AppColors.subtitleColor)),
            inputDecorationTheme: InputDecorationTheme(
              contentPadding: EdgeInsets.zero,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: AppColors.enabledBorderColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: AppColors.focusedBorderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: AppColors.errorBorderColor,
                ),
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16.0),
                elevation: 0,
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            // This is the theme of your application.
            //
            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a blue toolbar. Then, without quitting the app,
            // try changing the seedColor in the colorScheme below to Colors.green
            // and then invoke "hot reload" (save your changes or press the "hot
            // reload" button in a Flutter-supported IDE, or press "r" if you used
            // the command line to start the app).
            //
            // Notice that the counter didn't reset back to zero; the application
            // state is not lost during the reload. To reset the state, use hot
            // restart instead.
            //
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          title: 'careme24',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.startScreen,
          routes: AppRoutes.routes,
        ),
      ),
    );
  }
}
