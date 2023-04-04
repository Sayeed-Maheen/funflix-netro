// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/newCard.dart';
//
// import '../../colors/colors.dart';
//
// class PaymentMethod extends StatelessWidget {
//   const PaymentMethod({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.black2,
//       appBar: AppBar(
//         title: Text('Payment'),
//         backgroundColor: AppColors.black2,
//         elevation: 0,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: Icon(
//               Icons.qr_code,
//               color: AppColors.white,
//             ),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Container(
//           child: Column(
//             children: [
//               SizedBox(height: 20.h),
//               Container(
//                 height: 85.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(12)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 24.h,
//                       width: 22.w,
//                       child: Image.asset('assets/images/paypal.png'),
//                     ),
//                     SizedBox(height: 5.h),
//                     Text(
//                       'PayPal',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         color: AppColors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 85.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(12)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 24.h,
//                       width: 100.w,
//                       child: Image.asset(
//                         'assets/images/gpay.png',
//                         fit: BoxFit.fitWidth,
//                       ),
//                     ),
//                     SizedBox(height: 5.h),
//                     Text(
//                       'Google Pay',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         color: AppColors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 85.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(12)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 24.h,
//                       width: 32.w,
//                       child: Image.asset(
//                         'assets/images/apay.png',
//                         fit: BoxFit.fitWidth,
//                       ),
//                     ),
//                     SizedBox(height: 5.h),
//                     Text(
//                       'Apple Pay',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         color: AppColors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => NewCard()));
//                 },
//                 child: Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Center(
//                     child: Text(
//                       'ADD NEW CARD',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         color: AppColors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 200.h),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => PaymentMethod()));
//                 },
//                 child: Container(
//                   height: 55,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.themeColor,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Center(
//                     child: Text(
//                       'CONTINUE',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         color: AppColors.white,
//                         fontSize: 16,
//                       ),
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
