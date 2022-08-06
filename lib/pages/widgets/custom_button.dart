import 'package:flutter/material.dart';
import 'package:varana_v2/shares/theme.dart';
import 'package:varana_v2/shares/variables.dart';

class GreenButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double width;
  final double height;

  const GreenButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.width = double.infinity,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: greenColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  const CustomIconButton({Key? key, required this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Icon(
          icon,
          color: greenColor,
          size: 28,
        ),
      ),
    );
  }
}
