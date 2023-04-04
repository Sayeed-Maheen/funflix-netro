// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/faqCat.dart';
//
// import '../../colors/colors.dart';
//
// class Faq extends StatelessWidget {
//   const Faq({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             FAQCategory(),
//             SizedBox(height: 15.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   height: 55.h,
//                   width: 270.w,
//                   child: TextField(
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.w400),
//                     decoration: InputDecoration(
//                       hintStyle: TextStyle(color: Colors.white),
//                       prefixIcon: Icon(Icons.search, color: Colors.white),
//                       hintText: "Search",
//                       filled: true,
//                       fillColor: AppColors.grey3,
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(8)),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 55.h,
//                   width: 50.w,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Icon(
//                     Icons.filter_list,
//                     size: 28,
//                     color: AppColors.themeColor,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 15.h),
//             Container(
//               height: 185.h,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(width: 2, color: AppColors.white),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'How to create an account?',
//                           style: TextStyle(
//                               fontSize: 14,
//                               color: AppColors.white,
//                               fontWeight: FontWeight.w600),
//                         ),
//                         Icon(
//                           Icons.minimize,
//                           color: AppColors.white,
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 15.h),
//                     Text(
//                       'Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account.',
//                       style: TextStyle(
//                           fontSize: 14,
//                           color: AppColors.white,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 15.h),
//             Container(
//               height: 100.h,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(width: 2, color: AppColors.white),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'How to add a payment method \nby this app?',
//                           style: TextStyle(
//                               fontSize: 14,
//                               color: AppColors.white,
//                               fontWeight: FontWeight.w600),
//                         ),
//                         Icon(
//                           Icons.add,
//                           color: AppColors.themeColor,
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 15.h),
//             Container(
//               height: 80.h,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(width: 2, color: AppColors.white),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'What Time Does The Stock Market Open?',
//                           style: TextStyle(
//                               fontSize: 14,
//                               color: AppColors.white,
//                               fontWeight: FontWeight.w600),
//                         ),
//                         Icon(
//                           Icons.add,
//                           color: AppColors.themeColor,
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 15.h),
//             Container(
//               height: 80.h,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(width: 2, color: AppColors.white),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Is The Stock Market Open On Weekends?',
//                           style: TextStyle(
//                               fontSize: 14,
//                               color: AppColors.white,
//                               fontWeight: FontWeight.w600),
//                         ),
//                         Icon(
//                           Icons.add,
//                           color: AppColors.themeColor,
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
