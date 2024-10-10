import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swdltd/screens/login_screen.dart';
import 'package:swdltd/styles/textstyles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (_, child) {
        return MaterialApp(
          title: 'SWD',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFFEF5858)),
            useMaterial3: true,
            // appBarTheme: AppBarTheme(),
            inputDecorationTheme: InputDecorationTheme(
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                filled: true,
                fillColor: const Color(0XFF292929),
                hintStyle: AppTextStyles.sub.copyWith(color: const Color(0XFFA4A4A4)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0XFFA4A4A4)),
                    borderRadius: BorderRadius.circular(8.r)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0XFFEF5858)),
                    borderRadius: BorderRadius.circular(8.r)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(8.r)),
                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(8.r)))
          ),
          home: const LoginScreen(),
        );
      },
    );
  }
}
