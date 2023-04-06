import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funflix_netro/routes/routes.dart';
import 'package:funflix_netro/utils/appColors.dart';
import 'package:funflix_netro/utils/primarySwatch.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  // Set the status bar color to transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  // Ensure that the Flutter framework's binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize the `flutter_screenutil` package
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        // Return the main `GetMaterialApp` widget
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // Set the app's primary color based on the `AppColors.colorPrimary` value
            primarySwatch: createMaterialColor(AppColors.colorPrimary),
            // Set the app's default font family to 'Kanit'
            fontFamily: 'Kanit',
          ),
          // Set the initial route of the app to the splash screen
          initialRoute: RoutesClass.getSplashScreenRoute(),
          // Define the app's routes using `Get` package
          getPages: RoutesClass.routes,
          // Set named routes for the app using `Get` package
          routes: const {
            // Your named routes here
          },
        );
      },
    );
  }
}

