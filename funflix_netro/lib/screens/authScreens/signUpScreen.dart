import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funflix_netro/models/myBottomNavModel.dart';
import 'package:funflix_netro/models/rememberMeModel.dart';
import 'package:funflix_netro/screens/authScreens/signInScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'dart:math' as math;

import '../../utils/appColors.dart';
import '../../utils/myButton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  var obscureText = true;
  var obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSecondaryDarkest,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/signUp.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formfield,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 200.h),
                Text(
                  "Create your \n account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36.sp,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    color: AppColors.colorWhiteHighEmp,
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.colorGrey,
                        borderRadius: BorderRadius.circular(8)),
                    width: 296.w,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        bool emailValid = RegExp(
                                r"^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789")
                            .hasMatch(value!);
                        if (value.isEmpty) {
                          return "Enter Email";
                        } else if (emailValid) {
                          return "Enter valid Email";
                        }
                        return null;
                      },
                      style: const TextStyle(color: AppColors.colorDisabled),
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle:
                            const TextStyle(color: AppColors.colorDisabled),
                        prefixIcon: const Icon(
                          Icons.send_rounded,
                          color: AppColors.colorDisabled,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 16, 8, 16),
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
                Center(
                  child: Container(
                    width: 296.w,
                    decoration: BoxDecoration(
                        color: AppColors.colorGrey,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      obscureText: obscureText,
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passwordController.text.length < 6) {
                          return "Password length should be more than 6 characters";
                        }
                      },
                      style: const TextStyle(color: AppColors.colorDisabled),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.colorDisabled,
                        ),
                        hintText: 'Enter Password',
                        hintStyle:
                            const TextStyle(color: AppColors.colorDisabled),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: obscureText
                              ? const Icon(Icons.visibility_off,
                                  color: AppColors.colorPrimary, size: 20)
                              : const Icon(Icons.visibility_outlined,
                                  color: AppColors.colorPrimary, size: 20),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 16, -12, 16),
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
                Center(
                  child: Container(
                    width: 296.w,
                    decoration: BoxDecoration(
                        color: AppColors.colorGrey,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                      obscureText: obscureText2,
                      controller: passwordController2,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passwordController2.text.length < 6) {
                          return "Password length should be more than 6 characters";
                        }
                      },
                      style: const TextStyle(color: AppColors.colorDisabled),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.colorDisabled,
                        ),
                        hintText: 'Confirm Password',
                        hintStyle:
                            const TextStyle(color: AppColors.colorDisabled),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText2 = !obscureText2;
                            });
                          },
                          child: obscureText2
                              ? const Icon(Icons.visibility_off,
                                  color: AppColors.colorPrimary, size: 20)
                              : const Icon(Icons.visibility_outlined,
                                  color: AppColors.colorPrimary, size: 20),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 16,-12, 16),
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
                const RememberMeModel(),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: MyButton(
                      onPressed: () {
                        if (_formfield.currentState!.validate()) {
                          emailController.clear();
                          passwordController.clear();
                          Get.offAll(() => const MyBottomNavModel());
                        }
                      },
                      text: "CREATE ACCOUNT"),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Line 1.png',
                        height: 40.h, width: 70.w),
                    SizedBox(width: 10.w),
                    Text("OR CONTINUE WITH",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.colorWhiteHighEmp,
                        )),
                    SizedBox(width: 10.w),
                    Image.asset(
                      'assets/images/Line 2.png',
                      height: 40.h,
                      width: 70.w,
                    ),
                  ],
                ),
                //SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offAll(const MyBottomNavModel());
                      },
                      child: Image.asset('assets/images/facebook.png',
                          height: 32.h, width: 32.w),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(const MyBottomNavModel());
                      },
                      child: Image.asset('assets/images/google.png',
                          height: 40.h, width: 40.w),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(const MyBottomNavModel());
                      },
                      child: Image.asset('assets/images/apple.png',
                          height: 50.h, width: 45.w),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.colorWhiteHighEmp,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    InkWell(
                      onTap: () {
                        Get.offAll(const SignInScreen());
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.colorPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
