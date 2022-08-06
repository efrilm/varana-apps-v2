import 'package:flutter/material.dart';
import 'package:varana_v2/shares/theme.dart';
import 'package:varana_v2/shares/variables.dart';

class FeatureItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  const FeatureItem({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: greenColor,
              size: 40,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: greyTextStyle.copyWith(
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
