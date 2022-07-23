import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelaunce/screens/dashboard_screens/home_screen.dart';
import 'package:freelaunce/screens/dashboard_screens/local_offer_screen.dart';
import 'package:freelaunce/screens/dashboard_screens/map_screen.dart';
import 'package:freelaunce/screens/dashboard_screens/more_screen.dart';
import 'package:freelaunce/screens/dashboard_screens/notification_screen.dart';

import '../../constant.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int bottomNavIndex = 0;

  updateBottomNavBar(int value) {
    setState(() {
      bottomNavIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(bottomNavIndex, updateBottomNavBar),
      body: IndexedStack(
        index: bottomNavIndex,
        children: [
          HomeScreen(),
          MapScreen(),
          LocalOfferScreen(),
          NotificationScreen(),
          MoreScreen(),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final int itemIndex;
  final Function(int) onTapItem;

  const BottomNavBar(this.itemIndex, this.onTapItem, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.h,
      child: BottomNavigationBar(
        backgroundColor: kWhiteColor,
        items: [
          bottomNavigationBarItem(
            label: 'Home',
            unActiveSvg: kHouseSvg,
            activeSvg: kHouseSvg,
          ),
          bottomNavigationBarItem(
            label: 'Map',
            unActiveSvg: kMapSvg,
            activeSvg: kMapSvg,
          ),
          bottomNavigationBarItem(
            label: 'Local offers',
            unActiveSvg: kLocalOfferSvg,
            activeSvg: kLocalOfferSvg,
          ),
          bottomNavigationBarItem(
            label: 'Notifications',
            unActiveSvg: kNotificationSvg,
            activeSvg: kNotificationSvg,
          ),
          bottomNavigationBarItem(
            label: 'More',
            unActiveSvg: kMoreSvg,
            activeSvg: kMoreSvg,
          ),
        ],
        unselectedLabelStyle: kH4,
        selectedLabelStyle: kH4,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kBlackColor,
        currentIndex: itemIndex,
        onTap: (e) {
          onTapItem(e);
        },
      ),
    );
  }
}

BottomNavigationBarItem bottomNavigationBarItem(
    {required String label,
    required String activeSvg,
    required String unActiveSvg}) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: SvgPicture.asset(
        unActiveSvg,
        color: kBlackColor,
        width: 27.13.w,
        height: 27.13.h,
      ),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: SvgPicture.asset(
        activeSvg,
        color: kPrimaryColor,
        width: 27.13.w,
        height: 27.13.h,
      ),
    ),
    label: label,
  );
}
