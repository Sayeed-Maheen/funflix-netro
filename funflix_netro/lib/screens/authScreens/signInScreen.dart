import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funflix_netro/models/myBottomNavModel.dart';
import 'package:funflix_netro/models/rememberMeModel.dart';
import 'package:funflix_netro/screens/authScreens/signUpScreen.dart';
import 'package:funflix_netro/screens/interestScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'dart:math' as math;

import '../../utils/appColors.dart';
import '../../utils/myButton.dart';
import 'forgotPasswordScreen/forgotPasswordScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSecondaryDarkest,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/signIn.png"),
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
                SizedBox(height: 220.h),
                Text(
                  "Login to your \n account",
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
                        hintText: 'Password',
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
                const RememberMeModel(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: MyButton(
                      onPressed: () {
                        if (_formfield.currentState!.validate()) {
                          emailController.clear();
                          passwordController.clear();
                          Get.offAll(const InterestScreen());
                        }
                      },
                      text: "LOGIN"),
                ),
                SizedBox(height: 5.h),
                InkWell(
                  onTap: () {
                    Get.to(() => const ForgotPasswordScreen());
                  },
                  child: Text(
                    "Forget the password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.colorPrimary,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Line 1.png', width: 70.w),
                    SizedBox(width: 10.w),
                    Text("OR CONTINUE WITH",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.colorWhiteHighEmp,
                        )),
                    SizedBox(width: 10.w),
                    Image.asset('assets/images/Line 2.png', width: 70.w),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offAll(MyBottomNavModel());
                      },
                      child: Image.asset('assets/images/facebook.png',
                          height: 32.h, width: 32.w),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(MyBottomNavModel());
                      },
                      child: Image.asset('assets/images/google.png',
                          height: 40.h, width: 40.w),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(MyBottomNavModel());
                      },
                      child: Image.asset('assets/images/apple.png',
                          height: 50.h, width: 45.w),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.colorWhiteHighEmp,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    InkWell(
                      onTap: () {
                        Get.to(const SignUpScreen());
                      },
                      child: Text(
                        "Sign Up",
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
