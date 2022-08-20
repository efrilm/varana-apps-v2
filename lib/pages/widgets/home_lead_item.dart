import 'package:flutter/material.dart';
import 'package:varana_v2/shared/theme.dart';
import 'package:varana_v2/shared/variables.dart';

class HomeLeadItem extends StatelessWidget {
  const HomeLeadItem({
    Key? key,
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
                image: AssetImage(icProfile),
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
                  "Felicia Arnold",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '12 July 2022 16:00',
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
              'New',
              style: whiteTextStyle.copyWith(fontWeight: medium),
            ),
          ),
        ],
      ),
    );
  }
}
