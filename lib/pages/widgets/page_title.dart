import 'package:flutter/material.dart';
import 'package:varana_v2/shared/theme.dart';

class PageTitle extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool isView;

  const PageTitle({
    Key? key,
    required this.title,
    this.onTap,
    this.isView = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: headingTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ),
        isView
            ? GestureDetector(
                onTap: onTap,
                child: Row(
                  children: [
                    Text(
                      'View All',
                      style: greenTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                      color: greenColor,
                    )
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
