import 'package:flutter/material.dart';
import 'package:varana_v2/pages/ui/sales/main_page.dart';
import 'package:varana_v2/pages/ui/sign_in_page.dart';
import 'package:varana_v2/pages/ui/splash_page.dart';
import 'package:varana_v2/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: whiteColor,
          titleTextStyle: greenTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/main-sales': (context) => const SalesMainPage(),
      },
    );
  }
}
