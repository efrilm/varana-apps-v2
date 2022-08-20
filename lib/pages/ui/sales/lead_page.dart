import 'package:flutter/material.dart';
import 'package:varana_v2/pages/widgets/custom_appbar.dart';
import 'package:varana_v2/pages/widgets/divider.dart';
import 'package:varana_v2/pages/widgets/home_lead_item.dart';
import 'package:varana_v2/pages/widgets/lead_card.dart';
import 'package:varana_v2/shared/theme.dart';
import 'package:varana_v2/shared/variables.dart';

class SalesLeadPage extends StatefulWidget {
  const SalesLeadPage({Key? key}) : super(key: key);

  @override
  State<SalesLeadPage> createState() => _SalesLeadPageState();
}

class _SalesLeadPageState extends State<SalesLeadPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return const CustomAppBar(text: 'Leads');
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            TabBar(
              padding: EdgeInsets.symmetric(
                vertical: defaultMargin,
              ),
              controller: _tabController,
              unselectedLabelColor: greenColor,
              unselectedLabelStyle: greenTextStyle,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: greenColor,
              ),
              labelStyle: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
              labelColor: whiteColor,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 22,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: greenColor, width: 1),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Pending",
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 22,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: greenColor, width: 1),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Semua",
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 22,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: greenColor, width: 1),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Baru",
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 22,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: greenColor, width: 1),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Follow Up",
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 22,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: greenColor, width: 1),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Reservasi",
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 22,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: greenColor, width: 1),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Booking",
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // tab bar view here

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    children: const [
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    children: const [
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    children: const [
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    children: const [
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    children: const [
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    children: const [
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                      LeadCard(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
