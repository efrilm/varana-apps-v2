import 'package:flutter/material.dart';
import 'package:varana_v2/shared/theme.dart';

class HomeInformationItem extends StatelessWidget {
  final String title;
  final String content;

  const HomeInformationItem({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 12,
            fontWeight: light,
          ),
        ),
        Text(
          content,
          style: greenTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class AmounItem extends StatelessWidget {
  final int amount;
  final String title;
  const AmounItem({
    Key? key,
    required this.amount,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$amount',
          style: greenTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
