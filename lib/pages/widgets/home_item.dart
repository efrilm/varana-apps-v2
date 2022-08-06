import 'package:flutter/material.dart';
import 'package:varana_v2/shares/theme.dart';
import 'package:varana_v2/shares/variables.dart';

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

class HomeLeadItem extends StatelessWidget {
  final String name;
  final String? date;
  final String imageUrl;
  final String? status;
  const HomeLeadItem({
    Key? key,
    required this.name,
    this.date,
    required this.imageUrl,
    this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      margin: const EdgeInsets.only(
        bottom: 15,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  date!,
                  style: placeholderTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              status!,
              style: whiteTextStyle.copyWith(fontWeight: medium),
            ),
          ),
        ],
      ),
    );
  }
}
