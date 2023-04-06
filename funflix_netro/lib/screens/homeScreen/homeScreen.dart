import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funflix_netro/models/latestShowsModel.dart';
import 'package:funflix_netro/screens/homeScreen/latestShowsScreen.dart';
import 'package:funflix_netro/screens/homeScreen/trendingVideosScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/appColors.dart';
import 'notificationScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _data = [
    "All",
    "Movies",
    "Drama",
    "Thriller",
    "Romance",
    "Comedy",
    "Horror",
  ];
  List<String> _selectedData = [];

  _onSelected(bool selected, String data) {
    setState(() {
      if (selected) {
        _selectedData.clear();
        _selectedData.add(data);
      } else {
        _selectedData.remove(data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSecondaryDarkest,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 460.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/homeBig.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {
                              Get.to(const NotificationScreen());
                            },
                            icon: Icon(
                              Icons.notifications,
                              size: 26.sp,
                              color: AppColors.colorWhiteHighEmp,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'The Winter Lake',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: AppColors.colorWhiteHighEmp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '8 Seasons | Thriller | 2020',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorWhiteHighEmp,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              SizedBox(width: 10.w),
                              MaterialButton(
                                onPressed: () {},
                                height: 45.h,
                                padding: const EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    color: AppColors.colorSecondaryLight,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: SizedBox(
                                    height: 42.h,
                                    width: 104.w,
                                    child: Center(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.play_circle_outline,
                                          color: AppColors.colorWhiteHighEmp,
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          'Play',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400
                                              //fontWeight: FontWeight.bold
                                              ),
                                        ),
                                      ],
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 42.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: AppColors.colorWhiteHighEmp),
                            ),
                            child: const Icon(
                              Icons.playlist_add,
                              color: AppColors.colorWhiteHighEmp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 14, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest Shows',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.colorPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LatestShowsScreen()));
                      },
                      child: Text(
                        'Show all',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 16.w),
                    Wrap(
                      spacing: 5,
                      runSpacing: 3,
                      children: _data.map((data) {
                        return FilterChip(
                          showCheckmark: false,
                          backgroundColor: AppColors.colorSecondaryDarkest,
                          label: Text(
                            data,
                            style: const TextStyle(
                                color: AppColors.colorWhiteHighEmp),
                          ),
                          shape: const StadiumBorder(
                              side: BorderSide(color: AppColors.colorPrimary)),
                          selected: _selectedData.contains(data),
                          selectedColor: AppColors.colorPrimary,

                          padding: const EdgeInsets.all(5),
                          onSelected: (selected) => _onSelected(selected, data),
                        );
                      }).toList(),
                    ),
                    SizedBox(width: 16.w),
                  ],

                ),
              ),
              const LatestShowsModel(),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 14, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Now',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.colorPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TrendingVideosScreen()));
                      },
                      child: Text(
                        'Show all',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              const LatestShowsModel(),
              SizedBox(height: 20.h),
              // TrendingNow(),
            ],
          ),
        ),
      ),
    );
  }
}
