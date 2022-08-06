import 'package:flutter/material.dart';
import 'package:varana_v2/pages/widgets/custom_button.dart';
import 'package:varana_v2/pages/widgets/custom_text_form_field.dart';
import 'package:varana_v2/shares/theme.dart';
import 'package:varana_v2/shares/variables.dart';

class SalesDashboardPage extends StatelessWidget {
  const SalesDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                color: whiteColor,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: whiteColor,
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
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
                    'Shani Nalicia',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Have a nice day',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            CustomIconButton(
              onTap: () {},
              icon: Icons.notifications_outlined,
            ),
          ],
        ),
      );
    }

    Widget searchInput() {
      return CustomIconTextFormField(
        margin: EdgeInsets.only(
          top: 40,
          left: defaultMargin,
          right: defaultMargin,
        ),
        hint: 'Search Your Data',
      );
    }

    return SafeArea(
      child: ListView(
        children: [
          header(),
          searchInput(),
        ],
      ),
    );
  }
}
