import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:varana_v2/pages/widgets/custom_button.dart';
import 'package:varana_v2/pages/widgets/custom_text_form_field.dart';
import 'package:varana_v2/pages/widgets/divider.dart';
import 'package:varana_v2/pages/widgets/feature_item.dart';
import 'package:varana_v2/pages/widgets/home_item.dart';
import 'package:varana_v2/pages/widgets/home_lead_item.dart';
import 'package:varana_v2/pages/widgets/page_title.dart';
import 'package:varana_v2/pages/widgets/queue_item.dart';
import 'package:varana_v2/shared/theme.dart';
import 'package:varana_v2/shared/variables.dart';

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

    Widget informationCard() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        height: 130,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: cardbackgroundColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'I hope today is your lucky day',
                  style: headingTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Icon(
                  Icons.help_outline_rounded,
                  color: blackColor,
                  size: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const HomeInformationItem(
              title: 'Position',
              content: 'Sales Executive',
            ),
            const SizedBox(
              height: 4,
            ),
            const HomeInformationItem(
              title: 'Join Date',
              content: '12 Jun 2022',
            ),
            const SizedBox(
              height: 4,
            ),
            const HomeInformationItem(
              title: 'Sold',
              content: '2 Units',
            ),
          ],
        ),
      );
    }

    Widget amountLeads() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 26,
        ),
        child: Column(
          children: [
            const PageTitle(
              title: 'Your Amount Leads',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                AmounItem(
                  amount: 120,
                  title: 'Daily',
                ),
                AmountDivider(),
                AmounItem(
                  amount: 120,
                  title: 'Weekly',
                ),
                AmountDivider(),
                AmounItem(
                  amount: 120,
                  title: 'Monthly',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget percentage() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 6.0,
                  percent: .80,
                  center: Text(
                    '80%',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  progressColor: greenColor,
                  backgroundColor: greenColor.withOpacity(0.3),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Reservasi',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 6.0,
                  percent: .80,
                  center: Text(
                    '80%',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  progressColor: greenColor,
                  backgroundColor: greenColor.withOpacity(0.3),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Booking',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 6.0,
                  percent: .80,
                  center: Text(
                    '80%',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  progressColor: greenColor,
                  backgroundColor: greenColor.withOpacity(0.3),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Sold',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget features() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            const PageTitle(
              title: 'Features',
              isView: false,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeatureItem(
                  title: 'Absent',
                  icon: Icons.login,
                  onTap: () {},
                ),
                FeatureItem(
                  title: 'Go Home',
                  icon: Icons.logout,
                  onTap: () {},
                ),
                FeatureItem(
                  title: 'Stock',
                  icon: Icons.home_work_outlined,
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget queueSales() {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: const PageTitle(
                title: 'Queue Sales',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                ),
                child: Row(
                  children: const [
                    QueueItem(),
                    QueueItem(),
                    QueueItem(),
                    QueueItem(),
                    QueueItem(),
                    QueueItem(),
                    QueueItem(),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget recentlyLeads() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        child: Column(
          children: const [
            PageTitle(
              title: 'Recently Leads',
              isView: false,
            ),
            SizedBox(
              height: 15,
            ),
            HomeLeadItem(),
            HomeLeadItem(),
            HomeLeadItem(),
          ],
        ),
      );
    }

    return SafeArea(
      child: ListView(
        children: [
          header(),
          searchInput(),
          informationCard(),
          amountLeads(),
          const CustomDivider(),
          percentage(),
          const CustomDivider(),
          features(),
          const CustomDivider(),
          queueSales(),
          const CustomDivider(),
          recentlyLeads(),
        ],
      ),
    );
  }
}
