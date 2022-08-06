import 'dart:async';

import 'package:flutter/material.dart';
import 'package:varana_v2/shares/theme.dart';
import 'package:varana_v2/shares/variables.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushNamedAndRemoveUntil(
          context, '/sign-in', (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(logo),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 30,
            ),
            child: Text(
              'Developed By\nJagorawi Golf Estate',
              style: greyTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
