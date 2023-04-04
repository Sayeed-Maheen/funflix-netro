import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funflix_netro/screens/profileFillupScreen/newPinScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../models/genderDropdownModel.dart';
import '../../utils/appColors.dart';


class ProfileFillupScreen extends StatefulWidget {
  const ProfileFillupScreen({super.key});

  @override
  State<ProfileFillupScreen> createState() => _ProfileFillupScreenState();
}

class _ProfileFillupScreenState extends State<ProfileFillupScreen> {
  String dropdownvalue = 'Male';
  var items = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSecondaryDarkest,
      appBar: AppBar(
        title: const Text('Fill your profile'),
        backgroundColor: AppColors.colorSecondaryDarkest,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Center(
                child: SizedBox(
                    height: 86.h,
                    width: 86.w,
                    child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/blank.webp'))),
              ),
              SizedBox(height: 40.h),
              Center(
                child: Container(
                  decoration:  BoxDecoration(
                      color: AppColors.colorGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  width: double.infinity,
                  child: TextFormField(

                    style: const TextStyle(
                        color: AppColors.colorDisabled),
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: const TextStyle(
                          color: AppColors.colorDisabled),

                      contentPadding:
                      const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.colorGrey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.colorGrey,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Container(
                  decoration:  BoxDecoration(
                      color: AppColors.colorGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  width: double.infinity,
                  child: TextFormField(

                    style: const TextStyle(
                        color: AppColors.colorDisabled),
                    decoration: InputDecoration(
                      hintText: 'Nick Name',
                      hintStyle: const TextStyle(
                          color: AppColors.colorDisabled),

                      contentPadding:
                      const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.colorGrey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.colorGrey,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Container(
                  decoration:  BoxDecoration(
                      color: AppColors.colorGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  width: double.infinity,
                  child: TextFormField(

                    style: const TextStyle(
                        color: AppColors.colorDisabled),
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: const TextStyle(
                          color: AppColors.colorDisabled),
                      prefixIcon: const Icon(
                        Icons.send_rounded, color: AppColors.colorDisabled,
                      ),
                      contentPadding:
                      const EdgeInsets.fromLTRB(10, 16, 10, 16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.colorGrey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.colorGrey,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.colorError,
                          width: 1,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.colorError,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              IntlPhoneField(
                flagsButtonPadding: const EdgeInsets.only(left: 10),
                dropdownTextStyle: const TextStyle(color: AppColors.colorWhiteHighEmp),
                dropdownIconPosition: IconPosition.leading,
                dropdownIcon: const Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.colorWhiteHighEmp,
                ),
                style: const TextStyle(
                  color: AppColors.colorWhiteHighEmp,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.colorGrey,
                  hintText: 'Phone Number',
                  counterStyle: const TextStyle(color: AppColors.colorWhiteHighEmp),
                  hintStyle: const TextStyle(color: AppColors.colorGrey),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                initialCountryCode: 'BD',
              ),
              GenderDropdownModel(),
              SizedBox(height: 70.h),
              InkWell(
                onTap: () {
                  Get.to( const NewPinScreen());
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.colorWhiteHighEmp,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
