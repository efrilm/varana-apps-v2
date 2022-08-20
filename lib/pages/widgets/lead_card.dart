import 'package:flutter/material.dart';
import 'package:varana_v2/pages/widgets/divider.dart';
import 'package:varana_v2/shared/theme.dart';
import 'package:varana_v2/shared/variables.dart';

class LeadCard extends StatelessWidget {
  const LeadCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 138,
      margin: EdgeInsets.only(top: defaultMargin),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Felicia Arnold',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '12 July 2022 18:20',
                        style: placeholderTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.bookmark_border_outlined,
                  color: greenColor,
                ),
              ],
            ),
          ),
          CustomDivider(
            color: greyBorderColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.whatsapp,
                        color: greyColor,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        '628128767343',
                        style: greyTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 7),
                child: AmountDivider(
                  color: greyBorderColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.source_outlined,
                        color: greyColor,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Instagram',
                        style: greyTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
