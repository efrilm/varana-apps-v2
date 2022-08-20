import 'package:flutter/material.dart';
import 'package:varana_v2/shared/theme.dart';
import 'package:varana_v2/shared/variables.dart';

class QueueItem extends StatelessWidget {
  const QueueItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(icProfile),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Ranum Jihanes",
            style: headingTextStyle.copyWith(
              fontSize: 12,
              color: greenColor,
              fontWeight: medium,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
