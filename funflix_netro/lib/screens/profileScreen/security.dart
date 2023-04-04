// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/profileScreen.dart';
//
// import '../../colors/colors.dart';
//
// class SecurityProfile extends StatefulWidget {
//   const SecurityProfile({super.key});
//
//   @override
//   State<SecurityProfile> createState() => _SecurityProfileState();
// }
//
// class _SecurityProfileState extends State<SecurityProfile> {
//   bool isSwitched = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.black2,
//       appBar: AppBar(
//         title: Text('Security'),
//         backgroundColor: AppColors.black2,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Control',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.white,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Container(
//                 height: 50.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Security Alerts",
//                       hintStyle: TextStyle(color: AppColors.white),
//                       border: InputBorder.none,
//                       suffixIcon: Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         color: AppColors.white,
//                         size: 16,
//                       )),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 50.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Manage Devices",
//                       hintStyle: TextStyle(color: AppColors.white),
//                       border: InputBorder.none,
//                       suffixIcon: Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         color: AppColors.white,
//                         size: 16,
//                       )),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 50.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Manage Permision",
//                       hintStyle: TextStyle(color: AppColors.white),
//                       border: InputBorder.none,
//                       suffixIcon: Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         color: AppColors.white,
//                         size: 16,
//                       )),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Divider(height: 20.h),
//               Text(
//                 'Security',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.white,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                   height: 50.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         '   Remember me',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                       Switch(
//                         value: isSwitched,
//                         onChanged: (value) {
//                           setState(() {
//                             isSwitched = value;
//                             print(isSwitched);
//                           });
//                         },
//                         activeTrackColor: AppColors.lightRed,
//                         activeColor: AppColors.themeColor,
//                       ),
//                     ],
//                   )),
//               SizedBox(height: 10.h),
//               Container(
//                   height: 50.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         '   Biometric ID',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                       Switch(
//                         value: isSwitched,
//                         onChanged: (value) {
//                           setState(() {
//                             isSwitched = value;
//                             print(isSwitched);
//                           });
//                         },
//                         activeTrackColor: AppColors.lightRed,
//                         activeColor: AppColors.themeColor,
//                       ),
//                     ],
//                   )),
//               SizedBox(height: 10.h),
//               Container(
//                   height: 50.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         '   Face ID',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                       Switch(
//                         value: isSwitched,
//                         onChanged: (value) {
//                           setState(() {
//                             isSwitched = value;
//                             print(isSwitched);
//                           });
//                         },
//                         activeTrackColor: AppColors.lightRed,
//                         activeColor: AppColors.themeColor,
//                       ),
//                     ],
//                   )),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 50.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Google Authenticor",
//                       hintStyle: TextStyle(color: AppColors.white),
//                       border: InputBorder.none,
//                       suffixIcon: Icon(
//                         Icons.arrow_forward_ios,
//                         color: AppColors.white,
//                         size: 16,
//                       )),
//                 ),
//               ),
//               SizedBox(height: 30.h),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ProfileScreen()));
//                   },
//                   style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all<Color>(AppColors.white),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.all(14.0),
//                     child: Text(
//                       'CHANGE PIN',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.black2),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ProfileScreen()));
//                   },
//                   style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all<Color>(AppColors.themeColor),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.all(14.0),
//                     child: Text(
//                       'CHANGE PASSWORD',
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
