import 'package:flutter/material.dart';
import 'package:varana_v2/shared/theme.dart';

class AmountDivider extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  const AmountDivider({
    Key? key,
    this.height = 40,
    this.width = 4,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? whiteColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  const CustomDivider({
    Key? key,
    this.width = double.infinity,
    this.height = 4,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: color ?? whiteColor),
    );
  }
}
