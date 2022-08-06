import 'package:flutter/material.dart';
import 'package:varana_v2/pages/ui/sales/account_page.dart';
import 'package:varana_v2/pages/ui/sales/dashboard_page.dart';
import 'package:varana_v2/pages/ui/sales/lead_page.dart';
import 'package:varana_v2/pages/ui/sales/visit_page.dart';
import 'package:varana_v2/shares/theme.dart';

class SalesMainPage extends StatefulWidget {
  const SalesMainPage({Key? key}) : super(key: key);

  @override
  State<SalesMainPage> createState() => _SalesMainPageState();
}

class _SalesMainPageState extends State<SalesMainPage> {
  int currentIndex = 0;

  List listPage = [
    const SalesDashboardPage(),
    const SalesLeadPage(),
    const SalesVisitPage(),
    const SalesAccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    Widget customButtomNavBar() {
      return BottomNavigationBar(
        selectedItemColor: greenColor,
        unselectedItemColor: greyColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Icon(Icons.dashboard_outlined),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Icon(Icons.assignment_outlined),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Icon(Icons.home_outlined),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Icon(Icons.person_outline_outlined),
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      body: listPage[currentIndex],
      bottomNavigationBar: customButtomNavBar(),
    );
  }
}
