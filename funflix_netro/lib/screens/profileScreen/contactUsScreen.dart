import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/appColors.dart';
import '../../models/contactCategoryModel.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ContactCategoryModel(),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 55.h,
                width: 270.w,
                child: TextField(
                  style: const TextStyle(
                      color: AppColors.colorWhiteHighEmp,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: AppColors.colorWhiteHighEmp),
                    prefixIcon: const Icon(Icons.search,
                        color: AppColors.colorWhiteHighEmp),
                    hintText: "Search",
                    filled: true,
                    fillColor: AppColors.colorGrey,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Container(
                height: 55.h,
                width: 50.w,
                decoration: BoxDecoration(
                    color: AppColors.colorGrey,
                    borderRadius: BorderRadius.circular(8)),
                child: const Icon(
                  Icons.filter_list,
                  size: 28,
                  color: AppColors.colorPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
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
                  Icons.headphones,
                  color: AppColors.colorWhiteHighEmp,
                ),
                SizedBox(width: 12.w),
                Text(
                  '  Customer Services',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.colorWhiteHighEmp,
                    fontSize: 16.sp,
                  ),
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
                hintText: "   Whatsapp",
                prefixIcon: Icon(
                  Icons.location_city,
                  color: AppColors.colorWhiteHighEmp,
                  size: 26,
                ),
                hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                border: InputBorder.none,
              ),
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
                hintText: "   Website",
                prefixIcon: Icon(
                  Icons.language,
                  color: AppColors.colorWhiteHighEmp,
                  size: 26,
                ),
                hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                border: InputBorder.none,
              ),
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
                hintText: "   Facebook",
                prefixIcon: Icon(
                  Icons.facebook,
                  color: AppColors.colorWhiteHighEmp,
                  size: 26,
                ),
                hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                border: InputBorder.none,
              ),
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
                hintText: "   Twitter",
                prefixIcon: Icon(
                  Icons.facebook,
                  color: AppColors.colorWhiteHighEmp,
                  size: 26,
                ),
                hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                border: InputBorder.none,
              ),
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
                hintText: "   Instagram",
                prefixIcon: Icon(
                  Icons.facebook,
                  color: AppColors.colorWhiteHighEmp,
                  size: 26,
                ),
                hintStyle: TextStyle(color: AppColors.colorWhiteHighEmp),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
