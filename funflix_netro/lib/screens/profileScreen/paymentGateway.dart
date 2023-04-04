// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/newCard.dart';
//
// import '../../colors/colors.dart';
// import '../homeScreen/homeScreen.dart';
//
// class PaymentGateWay extends StatefulWidget {
//   const PaymentGateWay({super.key});
//
//   @override
//   State<PaymentGateWay> createState() => _PaymentGateWayState();
// }
//
// class _PaymentGateWayState extends State<PaymentGateWay> {
//   Future<void> _showSimpleDialog() async {
//     await showDialog<void>(
//         context: context,
//         builder: (BuildContext context) {
//           return SimpleDialog(
//             backgroundColor: AppColors.grey3,
//             // <-- SEE HERE
//             // title: const Text('Congratulations!'),
//             children: <Widget>[
//               SimpleDialogOption(
//                 child: Container(
//                     height: 108.h,
//                     width: 108.w,
//                     child: Image.asset('assets/images/confirm.png')),
//               ),
//               SimpleDialogOption(
//                 child: Center(
//                   child: Text(
//                     'Congratulations!',
//                     style: TextStyle(
//                         fontSize: 24,
//                         color: AppColors.white,
//                         fontWeight: FontWeight.w700),
//                   ),
//                 ),
//               ),
//               SimpleDialogOption(
//                 child: const Text(
//                   'You have successfully Subscribed 1\nmonth premium. Enjoy the benefits!',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 14,
//                       color: AppColors.white,
//                       fontWeight: FontWeight.w400,
//                       height: 1.2),
//                 ),
//               ),
//               SimpleDialogOption(
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => HomeScreen()));
//                   },
//                   child: Container(
//                     height: 52.h,
//                     width: 200.w,
//                     decoration: BoxDecoration(
//                         color: AppColors.themeColor,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Center(
//                       child: const Text(
//                         'CONTINUE',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 16,
//                             color: AppColors.white,
//                             fontWeight: FontWeight.w600,
//                             height: 1.2),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         });
//   }
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
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Container(
//             child: Column(
//               children: [
//                 Text(
//                   'Select the payment method you want to use.',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     color: AppColors.white,
//                     fontSize: 15,
//                   ),
//                 ),
//                 SizedBox(height: 20.h),
//                 Container(
//                   height: 85.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 24.h,
//                         width: 22.w,
//                         child: Image.asset('assets/images/paypal.png'),
//                       ),
//                       SizedBox(height: 5.h),
//                       Text(
//                         'PayPal',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10.h),
//                 Container(
//                   height: 85,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 24.h,
//                         width: 100.w,
//                         child: Image.asset(
//                           'assets/images/gpay.png',
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                       SizedBox(height: 5.h),
//                       Text(
//                         'Google Pay',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10.h),
//                 Container(
//                   height: 85.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 24.h,
//                         width: 32.w,
//                         child: Image.asset(
//                           'assets/images/apay.png',
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                       SizedBox(height: 5.h),
//                       Text(
//                         'Apple Pay',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10.h),
//                 Container(
//                   height: 85.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 24.h,
//                         width: 32.w,
//                         child: Image.asset(
//                           'assets/images/master card.png',
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                       SizedBox(height: 5.h),
//                       Text(
//                         '*****35465',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: AppColors.white,
//                           fontSize: 12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 30.h),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => NewCard()));
//                   },
//                   child: Container(
//                     height: 55,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                         color: AppColors.grey3,
//                         borderRadius: BorderRadius.circular(12)),
//                     child: Center(
//                       child: Text(
//                         'ADD NEW CARD',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 70.h),
//                 InkWell(
//                   onTap: _showSimpleDialog,
//                   child: Container(
//                     height: 55,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                         color: AppColors.themeColor,
//                         borderRadius: BorderRadius.circular(12)),
//                     child: Center(
//                       child: Text(
//                         'CONTINUE',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
