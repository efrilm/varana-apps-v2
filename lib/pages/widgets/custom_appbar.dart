import 'package:flutter/cupertino.dart';
import 'package:varana_v2/shared/theme.dart';
import 'package:varana_v2/shared/variables.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  const CustomAppBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 14,
          ),
          child: Text(
            text,
            style: headingTextStyle.copyWith(
              color: greenColor,
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 4,
          color: borderAppBarColor,
        ),
      ],
    );
  }
}
