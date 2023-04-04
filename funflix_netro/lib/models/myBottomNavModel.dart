import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funflix_netro/screens/downloadScreen.dart';
import 'package:funflix_netro/screens/myListScreen.dart';
import 'package:funflix_netro/screens/homeScreen/homeScreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/appColors.dart';

class MyBottomNavModel extends StatefulWidget {
  const MyBottomNavModel({super.key});

  @override
  State<MyBottomNavModel> createState() => _MyBottomNavModelState();
}

class _MyBottomNavModelState extends State<MyBottomNavModel> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DownloadScreen(),
    Text('Search'),
    MyListScreen(),
    Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSecondaryDarkest,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 76.h,
        decoration: BoxDecoration(
          color: AppColors.colorGrey,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: AppColors.colorWhiteHighEmp,
              hoverColor: AppColors.colorPrimary,
              gap: 8,
              activeColor: AppColors.colorWhiteHighEmp,
              iconSize: 25,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColors.colorPrimary,
              color: AppColors.colorWhiteHighEmp,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.download,
                  text: 'Download',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.folder_outlined,
                  text: 'File',
                ),
                GButton(
                  icon: Icons.account_circle_outlined,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
