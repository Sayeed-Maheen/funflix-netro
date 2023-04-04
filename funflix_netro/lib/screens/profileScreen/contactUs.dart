// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../colors/colors.dart';
// import 'contactCat.dart';
//
// class ContactUs extends StatelessWidget {
//   const ContactUs({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           FAContactCategory(),
//           SizedBox(height: 15.h),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 55.h,
//                 width: 270.w,
//                 child: TextField(
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.w400),
//                   decoration: InputDecoration(
//                     hintStyle: TextStyle(color: Colors.white),
//                     prefixIcon: Icon(Icons.search, color: Colors.white),
//                     hintText: "Search",
//                     filled: true,
//                     fillColor: AppColors.grey3,
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide.none,
//                         borderRadius: BorderRadius.circular(8)),
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 55.h,
//                 width: 50.w,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: Icon(
//                   Icons.filter_list,
//                   size: 28,
//                   color: AppColors.themeColor,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 15.h),
//           Container(
//             height: 55.h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: AppColors.grey3, borderRadius: BorderRadius.circular(8)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(width: 12.w),
//                 Icon(
//                   Icons.headphones,
//                   color: AppColors.white,
//                 ),
//                 SizedBox(width: 12.w),
//                 Text(
//                   '  Customer Services',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w400,
//                     color: AppColors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10.h),
//           Container(
//             height: 55.h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: AppColors.grey3, borderRadius: BorderRadius.circular(8)),
//             child: TextField(
//               enabled: false,
//               decoration: InputDecoration(
//                 hintText: "   Whatsapp",
//                 prefixIcon: Icon(
//                   Icons.location_city,
//                   color: AppColors.white,
//                   size: 26,
//                 ),
//                 hintStyle: TextStyle(color: AppColors.white),
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//           Container(
//             height: 55.h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: AppColors.grey3, borderRadius: BorderRadius.circular(8)),
//             child: TextField(
//               enabled: false,
//               decoration: InputDecoration(
//                 hintText: "   Website",
//                 prefixIcon: Icon(
//                   Icons.language,
//                   color: AppColors.white,
//                   size: 26,
//                 ),
//                 hintStyle: TextStyle(color: AppColors.white),
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//           Container(
//             height: 55.h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: AppColors.grey3, borderRadius: BorderRadius.circular(8)),
//             child: TextField(
//               enabled: false,
//               decoration: InputDecoration(
//                 hintText: "   Facebook",
//                 prefixIcon: Icon(
//                   Icons.facebook,
//                   color: AppColors.white,
//                   size: 26,
//                 ),
//                 hintStyle: TextStyle(color: AppColors.white),
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//           Container(
//             height: 55.h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: AppColors.grey3, borderRadius: BorderRadius.circular(8)),
//             child: TextField(
//               enabled: false,
//               decoration: InputDecoration(
//                 hintText: "   Twitter",
//                 prefixIcon: Icon(
//                   Icons.facebook,
//                   color: AppColors.white,
//                   size: 26,
//                 ),
//                 hintStyle: TextStyle(color: AppColors.white),
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//           Container(
//             height: 55.h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: AppColors.grey3, borderRadius: BorderRadius.circular(8)),
//             child: TextField(
//               enabled: false,
//               decoration: InputDecoration(
//                 hintText: "   Instagram",
//                 prefixIcon: Icon(
//                   Icons.facebook,
//                   color: AppColors.white,
//                   size: 26,
//                 ),
//                 hintStyle: TextStyle(color: AppColors.white),
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
