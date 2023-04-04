// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/profileScreen.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
//
// import '../../colors/colors.dart';
//
// class EditProfile extends StatefulWidget {
//   const EditProfile({super.key});
//
//   @override
//   State<EditProfile> createState() => _EditProfileState();
// }
//
// class _EditProfileState extends State<EditProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.black2,
//       appBar: AppBar(
//         title: Text('Edit Profile'),
//         backgroundColor: AppColors.black2,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               SizedBox(height: 20.h),
//               Container(
//                 height: 100.h,
//                 width: 100.w,
//                 child: Image.asset('assets/images/profile2.png'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 16, right: 16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(height: 20.h),
//                     Center(
//                         child: Text(
//                       'Alexandar Golap',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         color: AppColors.white,
//                         fontSize: 24,
//                       ),
//                     )),
//                     Center(
//                       child: Text(
//                         'username@website.com',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 14,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20.h),
//                     Container(
//                       height: 50.h,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: AppColors.grey3,
//                           borderRadius: BorderRadius.circular(8)),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "   Alexandar Golap",
//                           hintStyle: TextStyle(color: AppColors.white),
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     Container(
//                       height: 50.h,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: AppColors.grey3,
//                           borderRadius: BorderRadius.circular(8)),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "   Andrew",
//                           hintStyle: TextStyle(color: AppColors.white),
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     Container(
//                       height: 50.h,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: AppColors.grey3,
//                           borderRadius: BorderRadius.circular(8)),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "   andrew.anistol6@yourmail.com",
//                           hintStyle: TextStyle(color: AppColors.white),
//                           suffixIcon: Icon(Icons.email, color: AppColors.white),
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     IntlPhoneField(
//                       dropdownTextStyle: TextStyle(color: AppColors.white),
//                       flagsButtonPadding: EdgeInsets.only(left: 10),
//                       dropdownIcon: Icon(
//                         Icons.arrow_drop_down,
//                         color: AppColors.white,
//                       ),
//                       style: TextStyle(
//                         color: AppColors.white,
//                       ),
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: AppColors.grey3,
//                         hintText: 'Phone Number',
//                         counterStyle: TextStyle(color: AppColors.white),
//                         hintStyle: TextStyle(color: AppColors.white),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       initialCountryCode: 'BD',
//                     ),
//                     SizedBox(height: 10.h),
//                     Container(
//                       height: 50.h,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: AppColors.grey3,
//                           borderRadius: BorderRadius.circular(8)),
//                       child: TextField(
//                         decoration: InputDecoration(
//                             hintText: "   Male",
//                             hintStyle: TextStyle(color: AppColors.white),
//                             border: InputBorder.none,
//                             suffixIcon: Icon(Icons.arrow_drop_down,
//                                 color: AppColors.white)),
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     Container(
//                       height: 50.h,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: AppColors.grey3,
//                           borderRadius: BorderRadius.circular(8)),
//                       child: TextField(
//                         decoration: InputDecoration(
//                             hintText: "   United States",
//                             hintStyle: TextStyle(color: AppColors.white),
//                             border: InputBorder.none,
//                             suffixIcon: Icon(Icons.arrow_drop_down,
//                                 color: AppColors.white)),
//                       ),
//                     ),
//                     SizedBox(height: 15.h),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ProfileScreen()));
//                       },
//                       child: Container(
//                         height: 55.h,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             color: AppColors.themeColor,
//                             borderRadius: BorderRadius.circular(12)),
//                         child: Center(
//                           child: Text(
//                             'UPDATE',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               color: AppColors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
