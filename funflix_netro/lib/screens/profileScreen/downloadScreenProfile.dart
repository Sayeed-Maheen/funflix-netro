import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/appColors.dart';

class DownloadScreenProfile extends StatefulWidget {
  const DownloadScreenProfile({super.key});

  @override
  State<DownloadScreenProfile> createState() => _DownloadScreenProfileState();
}

class _DownloadScreenProfileState extends State<DownloadScreenProfile> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSecondaryDarkest,
      appBar: AppBar(
        title: const Text('Download'),
        backgroundColor: AppColors.colorSecondaryDarkest,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.colorGrey,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 12.w),
                  const Icon(
                    Icons.wifi,
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    '  Wi-Fi Only',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.colorWhiteHighEmp,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(width: 135.w),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: AppColors.colorPrimaryLighter,
                    activeColor: AppColors.colorPrimary,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.colorGrey,
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                enabled: false,
                decoration: InputDecoration(
                    hintText: "   Smart Download",
                    prefixIcon: Icon(
                      Icons.download_rounded,
                      color: AppColors.colorWhiteHighEmp,
                      size: 26,
                    ),
                    hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColors.colorWhiteHighEmp,
                      size: 16,
                    )),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.colorGrey,
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                enabled: false,
                decoration: InputDecoration(
                    hintText: "   Video Quality",
                    prefixIcon: Icon(
                      Icons.high_quality,
                      color: AppColors.colorWhiteHighEmp,
                      size: 26,
                    ),
                    hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColors.colorWhiteHighEmp,
                      size: 16,
                    )),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.colorGrey,
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                enabled: false,
                decoration: InputDecoration(
                    hintText: "   Audio Quality",
                    prefixIcon: Icon(
                      Icons.mic,
                      color: AppColors.colorWhiteHighEmp,
                      size: 26,
                    ),
                    hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColors.colorWhiteHighEmp,
                      size: 16,
                    )),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.colorGrey,
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                enabled: false,
                decoration: InputDecoration(
                    hintText: "   Delete all downloads",
                    prefixIcon: Icon(
                      Icons.download_rounded,
                      color: AppColors.colorWhiteHighEmp,
                      size: 26,
                    ),
                    hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColors.colorWhiteHighEmp,
                      size: 16,
                    )),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.colorGrey,
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                enabled: false,
                decoration: InputDecoration(
                    hintText: "   Delete Cache",
                    prefixIcon: Icon(
                      Icons.delete_forever_outlined,
                      color: AppColors.colorWhiteHighEmp,
                      size: 26,
                    ),
                    hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColors.colorWhiteHighEmp,
                      size: 16,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
