import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funflix_netro/models/myBottomNavModel.dart';
import 'package:funflix_netro/screens/castMoviesScreen.dart';
import 'package:funflix_netro/screens/comments.dart';

import 'package:get/get.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/appColors.dart';
import 'homeScreen/notificationScreen.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({super.key});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Pushpa",
      "images": "assets/images/Image1.png",
    },
    {
      "title": "Action",
      "images": "assets/images/Image-1.png",
    },
    {
      "title": "The last Airbender",
      "images": "assets/images/Image-3.png",
    },
    {
      "title": "Top Gun Mavrik",
      "images": "assets/images/mavrik.png",
    },
    {
      "title": "Oblivion",
      "images": "assets/images/oblivion.png",
    },
    {
      "title": "Fallout",
      "images": "assets/images/fallout.png",
    },
    {
      "title": "Bullet Train",
      "images": "assets/images/Image-4.png",
    }
  ];

  Future<void> _showSimpleDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: AppColors.colorGrey,
            // <-- SEE HERE
            // title: const Text('Congratulations!'),
            children: <Widget>[
              SimpleDialogOption(
                child: Center(
                  child: Text(
                    'Download',
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SimpleDialogOption(
                child: Text(
                  'Movies still downloading....\nPlease wait or hide the process',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.colorWhiteHighEmp,
                      fontWeight: FontWeight.w400,
                      height: 1.2),
                ),
              ),
              SimpleDialogOption(
                  child: Image.asset('assets/images/downloading.png')),
              SimpleDialogOption(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColors.colorWhiteMidEmp,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'HIDE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.colorBlackMidEmp,
                            fontWeight: FontWeight.w600,
                            height: 1.2),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSecondaryDarkest,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/croods.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.offAll(const MyBottomNavModel());
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 26,
                              color: AppColors.colorWhiteHighEmp,
                            )),
                        IconButton(
                            onPressed: () {
                              Get.offAll(const NotificationScreen());
                            },
                            icon: const Icon(
                              Icons.cast_connected_outlined,
                              size: 26,
                              color: AppColors.colorWhiteHighEmp,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'The Croods',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.bookmark_add_rounded,
                        color: AppColors.colorWhiteHighEmp,
                      ),
                      SizedBox(width: 15.w),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            backgroundColor: AppColors.colorGrey,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0),
                              ),
                            ),
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.30,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: SizedBox(
                                    //height: 10.h,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.h),
                                        Center(
                                          child: SizedBox(
                                              height: 4,
                                              width: 32,
                                              child: Image.asset(
                                                  'assets/images/top.png')),
                                        ),
                                        SizedBox(height: 1.5.h),
                                        Center(
                                          child: Text(
                                            'Send to',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  AppColors.colorWhiteHighEmp,
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10.h),
                                        const Divider(
                                          height: 1,
                                          color: AppColors.colorGrey,
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 31.h,
                                                  width: 31.w,
                                                  child: Image.asset(
                                                      'assets/images/facebook.png'),
                                                ),
                                                SizedBox(height: 5.h),
                                                Text(
                                                  'Facebook',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 20.w),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 31.h,
                                                  width: 31.w,
                                                  child: Image.asset(
                                                    'assets/images/whatsapp.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                SizedBox(height: 5.h),
                                                Text(
                                                  'Whatsapp',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 20.w),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 31.h,
                                                  width: 31.w,
                                                  child: Image.asset(
                                                    'assets/images/twitter.png',
                                                  ),
                                                ),
                                                SizedBox(height: 5.h),
                                                Text(
                                                  'Twitter',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 20.w),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 31.h,
                                                  width: 31.w,
                                                  child: Image.asset(
                                                    'assets/images/yahoo.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                SizedBox(height: 5.h),
                                                Text(
                                                  'Yahoo',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 31.h,
                                                  width: 31.w,
                                                  child: Image.asset(
                                                      'assets/images/facebook.png'),
                                                ),
                                                SizedBox(height: 5.h),
                                                Text(
                                                  'Facebook',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 20.w),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 31.h,
                                                  width: 31.w,
                                                  child: Image.asset(
                                                    'assets/images/whatsapp.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                SizedBox(height: 5.h),
                                                Text(
                                                  'Whatsapp',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 20.w),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 31.h,
                                                  width: 31.w,
                                                  child: Image.asset(
                                                    'assets/images/twitter.png',
                                                  ),
                                                ),
                                                SizedBox(height: 5.h),
                                                Text(
                                                  'Twitter',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 20.w),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 31.h,
                                                  width: 31.w,
                                                  child: Image.asset(
                                                    'assets/images/yahoo.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                SizedBox(height: 5.h),
                                                Text(
                                                  'Yahoo',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Icon(
                          Icons.share,
                          color: AppColors.colorWhiteHighEmp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            backgroundColor: AppColors.colorGrey,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0),
                              ),
                            ),
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: SizedBox(
                                    //height: 10.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 5.h),
                                        Center(
                                          child: SizedBox(
                                              height: 4,
                                              width: 32,
                                              child: Image.asset(
                                                  'assets/images/top.png')),
                                        ),
                                        SizedBox(height: 5.h),
                                        Center(
                                          child: Text(
                                            'Give Rating',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  AppColors.colorWhiteHighEmp,
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5.h),
                                        Divider(
                                          height: 1.h,
                                          color: AppColors.colorGrey,
                                        ),
                                        SizedBox(height: 5.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  '9 / 10',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors
                                                          .colorWhiteHighEmp,
                                                      fontSize: 14.sp,
                                                      height: 1.2),
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.star,
                                                      color: AppColors
                                                          .colorPrimary,
                                                    ),
                                                    SizedBox(width: 2.w),
                                                    const Icon(
                                                      Icons.star,
                                                      color: AppColors
                                                          .colorPrimary,
                                                    ),
                                                    SizedBox(width: 2.w),
                                                    const Icon(
                                                      Icons.star,
                                                      color: AppColors
                                                          .colorPrimary,
                                                    ),
                                                    SizedBox(width: 2.w),
                                                    const Icon(
                                                      Icons.star,
                                                      color: AppColors
                                                          .colorPrimary,
                                                    ),
                                                    SizedBox(width: 2.w),
                                                    const Icon(
                                                      Icons.star,
                                                      color: AppColors
                                                          .colorWhiteHighEmp,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  '22,534 reviews',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorWhiteHighEmp,
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 100.h,
                                              width: 180.w,
                                              child: Image.asset(
                                                  'assets/images/rating.png'),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5.h),
                                        Divider(
                                          height: 1.h,
                                          color: AppColors.colorGrey,
                                        ),
                                        SizedBox(height: 20.h),
                                        Center(
                                            child: RatingBar.builder(
                                                initialRating: 4,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                itemBuilder: (context, _) =>
                                                    const Icon(Icons.star,
                                                        color: AppColors
                                                            .colorPrimary), // Icon
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                })),
                                        SizedBox(height: 10.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 45.h,
                                                width: 148.w,
                                                decoration: BoxDecoration(
                                                  color: AppColors
                                                      .colorWhiteHighEmp,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'CANCEL',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: AppColors
                                                          .colorBlackMidEmp,
                                                      fontSize: 16.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 20.w),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 45.h,
                                                width: 148.w,
                                                decoration: BoxDecoration(
                                                  color: AppColors.colorPrimary,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'SUBMIT',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: AppColors
                                                          .colorWhiteHighEmp,
                                                      fontSize: 16.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Icon(
                          Icons.star_half,
                          color: AppColors.colorPrimary,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '9.8',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.colorPrimary,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 5.w),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColors.colorPrimary,
                        size: 18,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '2022',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: AppColors.colorPrimary),
                        ),
                        child: Center(
                          child: Text(
                            '13+',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.colorWhiteHighEmp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: AppColors.colorPrimary),
                        ),
                        child: Center(
                          child: Text(
                            'US',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.colorWhiteHighEmp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: AppColors.colorPrimary),
                        ),
                        child: Center(
                          child: Text(
                            'Subtitle',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.colorWhiteHighEmp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  height: 50.h,
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SizedBox(
                      height: 48.h,
                      width: 155.w,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.play_circle,
                            color: AppColors.colorWhiteHighEmp,
                            size: 26,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Play',
                            style: TextStyle(
                                color: AppColors.colorWhiteHighEmp,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600
                                //fontWeight: FontWeight.bold
                                ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                MaterialButton(
                  onPressed: _showSimpleDialog,
                  height: 50.h,
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      color: AppColors.colorBlackMidEmp,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: 48.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        color: AppColors.colorSecondaryDarkest,
                        borderRadius: BorderRadius.circular(12),
                        border:
                            Border.all(width: 1, color: AppColors.colorPrimary),
                      ),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.download,
                            color: AppColors.colorWhiteHighEmp,
                            size: 26,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Download',
                            style: TextStyle(
                                color: AppColors.colorWhiteHighEmp,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600
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
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Genre: Animation, Cartoon',
                style: TextStyle(
                    color: AppColors.colorWhiteHighEmp,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600
                    //fontWeight: FontWeight.bold
                    ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Lörem ipsum suben beng häkönat pärlifiera. Dotivis astroras, prer. Sohäns komtes, sad fastän debårade hexasm. Fånegen teleskop. Degt oling laddstolpe resam. ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: AppColors.colorWhiteHighEmp,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.3),
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cast',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const CastMoviesScreen());
                        },
                        child: SizedBox(
                            height: 56.h,
                            width: 56.w,
                            child: Image.asset('assets/images/img1.png')),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Nicolas\nCage',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorPrimary,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      ),
                      Text(
                        'Grug',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    children: [
                      SizedBox(
                          height: 56.h,
                          width: 56.w,
                          child: Image.asset('assets/images/img2.png')),
                      SizedBox(height: 2.h),
                      Text(
                        'Chris\nSanders',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorPrimary,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      ),
                      Text(
                        'Belt',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    children: [
                      SizedBox(
                          height: 56.h,
                          width: 56.w,
                          child: Image.asset('assets/images/img3.png')),
                      SizedBox(height: 2.h),
                      Text(
                        'Ryan\nReynolds',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorPrimary,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      ),
                      Text(
                        'Buy',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    children: [
                      SizedBox(
                          height: 56.h,
                          width: 56.w,
                          child: Image.asset('assets/images/img4.png')),
                      SizedBox(height: 2.h),
                      Text(
                        'Clark\nDuke',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorPrimary,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      ),
                      Text(
                        'Thunk',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    children: [
                      SizedBox(
                          height: 56.h,
                          width: 56.w,
                          child: Image.asset('assets/images/img5.png')),
                      SizedBox(height: 2.h),
                      Text(
                        'Emma\nStone',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorPrimary,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      ),
                      Text(
                        'Eep',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              unselectedLabelColor: AppColors.colorWhiteHighEmp,
              labelColor: AppColors.colorWhiteHighEmp,
              controller: tabController,
              tabs: const [
                Tab(
                  text: 'Trailers',
                ),
                Tab(
                  text: 'More like this',
                ),
                Tab(
                  text: 'Comments',
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: 700.h,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          mainAxisExtent: 210,
                        ),
                        itemCount: gridMap.length,
                        itemBuilder: (_, index) {
                          return Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  16.0,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      "${gridMap.elementAt(index)['images']}",
                                      height: 170,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${gridMap.elementAt(index)['title']}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .merge(
                                                const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors
                                                      .colorWhiteHighEmp,
                                                  fontSize: 12,
                                                ),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                top: 141,
                                left: 135,
                                child: Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      color: AppColors.colorPrimary,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Center(
                                    child: Text(
                                      '8.5',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.colorWhiteHighEmp,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ))
                          ]);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          mainAxisExtent: 210,
                        ),
                        itemCount: gridMap.length,
                        itemBuilder: (_, index) {
                          return Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  16.0,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      "${gridMap.elementAt(index)['images']}",
                                      height: 170,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${gridMap.elementAt(index)['title']}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .merge(
                                                const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors
                                                      .colorWhiteHighEmp,
                                                  fontSize: 12,
                                                ),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                top: 141,
                                left: 135,
                                child: Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      color: AppColors.colorPrimary,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Center(
                                    child: Text(
                                      '8.5',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.colorWhiteHighEmp,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ))
                          ]);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Get.to(const Comments());
                                },
                                child: Image.asset("assets/images/Frame.png")),
                            GridView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.0,
                                mainAxisSpacing: 12.0,
                                mainAxisExtent: 210,
                              ),
                              itemCount: gridMap.length,
                              itemBuilder: (_, index) {
                                return Stack(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        16.0,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.asset(
                                            "${gridMap.elementAt(index)['images']}",
                                            height: 170,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${gridMap.elementAt(index)['title']}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1!
                                                    .merge(
                                                      const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors
                                                            .colorWhiteHighEmp,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: 141,
                                      left: 135,
                                      child: Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                            color: AppColors.colorPrimary,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Center(
                                          child: Text(
                                            '8.5',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  AppColors.colorWhiteHighEmp,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ),
                                      ))
                                ]);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
