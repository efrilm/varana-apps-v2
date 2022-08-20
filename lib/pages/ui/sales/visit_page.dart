import 'package:flutter/material.dart';
import 'package:varana_v2/pages/widgets/custom_appbar.dart';
import 'package:varana_v2/pages/widgets/lead_card.dart';
import 'package:varana_v2/shared/theme.dart';
import 'package:varana_v2/shared/variables.dart';

class SalesVisitPage extends StatefulWidget {
  const SalesVisitPage({Key? key}) : super(key: key);

  @override
  State<SalesVisitPage> createState() => _SalesVisitPageState();
}

class _SalesVisitPageState extends State<SalesVisitPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
      return const CustomAppBar(text: 'Visit');
    }

    Widget tabBar() {
      return TabBar(
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
                  "Akan Visit",
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
                  "Sudah Visit",
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget tabBarView() {
      return Expanded(
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
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            tabBar(),
            tabBarView(),
          ],
        ),
      ),
    );
  }
}
