import 'package:flutter/material.dart';
import 'package:varana_v2/shared/theme.dart';
import 'package:varana_v2/shared/variables.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsets margin;
  final String? hint;
  final bool obscureText;
  final TextEditingController? controller;
  const CustomTextFormField({
    Key? key,
    this.margin = EdgeInsets.zero,
    this.hint,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 2,
      ),
      child: TextFormField(
        style: blackTextStyle.copyWith(
          fontWeight: semiBold,
        ),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: greyTextStyle,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CustomIconTextFormField extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  final EdgeInsets margin;
  const CustomIconTextFormField({
    Key? key,
    this.hint,
    this.controller,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 2,
      ),
      child: TextFormField(
        style: blackTextStyle.copyWith(
          fontWeight: semiBold,
        ),
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: greyTextStyle.copyWith(
            fontWeight: light,
          ),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: greyColor,
            size: 26,
          ),
        ),
      ),
    );
  }
}
