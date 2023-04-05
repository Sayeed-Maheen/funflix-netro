import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/appColors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSecondaryDarkest,
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: AppColors.colorSecondaryDarkest,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. Types of data we collect',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.colorWhiteHighEmp,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. enade presa kyvingar renas.   Lörem ipsum asovirat niser der.Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension.Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas. Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas.  Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas.  ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.colorWhiteHighEmp,
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                '2. Use of your personal data',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.colorWhiteHighEmp,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. enade presa kyvingar renas.   Lörem ipsum asovirat niser der.Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension.Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas. Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas.  Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas.  ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.colorWhiteHighEmp,
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                '3. Discourser of your personal data  ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.colorWhiteHighEmp,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. enade presa kyvingar renas.   Lörem ipsum asovirat niser der.Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension.Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas. Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas.  Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. Renade presa kyvingar renas.  ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.colorWhiteHighEmp,
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Lörem ipsum asovirat niser der. Dupons mimärat autokabel kopredat desa. Opp prere basm adism vilopension. Desism skämsfilter bende messa klimatsäkra. enade presa kyvingar renas.   Lörem ipsum asovirat niser der.Dupons mimärat autokabel kopredat desa.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.colorWhiteHighEmp,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
