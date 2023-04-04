// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/paymentMethod.dart';
// import 'package:funflex_ott/colors/colors.dart';
//
// class SubToPremium extends StatelessWidget {
//   const SubToPremium({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.black2,
//       appBar: AppBar(
//         title: Text('Plans'),
//         backgroundColor: AppColors.black2,
//         elevation: 0,
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             SizedBox(height: 20.h),
//             Center(
//                 child: Text(
//               'Subscribe to Premium',
//               style: TextStyle(
//                 fontWeight: FontWeight.w700,
//                 color: AppColors.themeColor,
//                 fontSize: 24,
//               ),
//             )),
//             Center(
//               child: Text(
//                 'Enjoy watching Full-HD movies, without\nrestrictions & without ads',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontWeight: FontWeight.w400,
//                     color: AppColors.white,
//                     fontSize: 14,
//                     height: 1.2),
//               ),
//             ),
//             SizedBox(height: 20.h),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, top: 25),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Features',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(height: 10.h),
//                       Text(
//                         'Downloads',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(height: 10.h),
//                       Text(
//                         'Screens',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(height: 10.h),
//                       Text(
//                         'Originals',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(height: 10.h),
//                       Text(
//                         'Devices',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(height: 10.h),
//                       Text(
//                         'Ads',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(width: 20.w),
//                   Container(
//                     height: 260.h,
//                     width: 102.w,
//                     decoration: BoxDecoration(
//                         color: AppColors.grey3,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 20.h),
//                           Text(
//                             'Bd 1 year..',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               color: AppColors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(height: 10.h),
//                           Icon(
//                             Icons.check,
//                             color: AppColors.white,
//                           ),
//                           SizedBox(height: 10.h),
//                           Icon(
//                             Icons.check,
//                             color: AppColors.white,
//                           ),
//                           SizedBox(height: 10.h),
//                           Text(
//                             '7',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: AppColors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(height: 10.h),
//                           Text(
//                             'No Ads',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: AppColors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(height: 10.h),
//                           Text(
//                             'BDT 899',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               color: AppColors.themeColor,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Text(
//                             'Per year',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: AppColors.white,
//                               fontSize: 12,
//                             ),
//                           ),
//                         ]),
//                   ),
//                   SizedBox(width: 20.w),
//                   Container(
//                     height: 260.h,
//                     width: 102.w,
//                     decoration: BoxDecoration(
//                         color: AppColors.grey3,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 20.h),
//                           Text(
//                             'Bd 1 year..',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               color: AppColors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(height: 10.h),
//                           Text(
//                             '1',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               color: AppColors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(height: 10.h),
//                           Icon(
//                             Icons.check,
//                             color: AppColors.white,
//                           ),
//                           SizedBox(height: 10.h),
//                           Text(
//                             '4',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: AppColors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(height: 10.h),
//                           Text(
//                             'No Ads',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: AppColors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(height: 10.h),
//                           Text(
//                             'BDT 599',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               color: AppColors.themeColor,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Text(
//                             'Per year',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: AppColors.white,
//                               fontSize: 12,
//                             ),
//                           ),
//                         ]),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 180.h),
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => PaymentMethod()));
//                 },
//                 child: Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.themeColor,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Center(
//                     child: Text(
//                       'CONTINUE WITH BD 1 YEAR 2 STREMS',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         color: AppColors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
