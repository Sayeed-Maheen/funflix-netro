import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funflix_netro/routes/routes.dart';
import 'package:funflix_netro/utils/appColors.dart';
import 'package:funflix_netro/utils/primarySwatch.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: createMaterialColor(AppColors.colorPrimary),
                fontFamily: 'Kanit'),
            initialRoute: RoutesClass.getSplashScreenRoute(),
            // Set the initial route of the app
            getPages: RoutesClass.routes,
            // Define the app's routes
            routes: const {
              // your routes here
            },
          );
        });
  }
}
