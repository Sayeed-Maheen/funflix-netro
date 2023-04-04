// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/paymentGateway.dart';
//
// import '../../colors/colors.dart';
//
// class NewCard extends StatefulWidget {
//   const NewCard({super.key});
//
//   @override
//   State<NewCard> createState() => _NewCardState();
// }
//
// class _NewCardState extends State<NewCard> {
//   bool? check1 = false;
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
//       body: Container(
//         child: Column(
//           children: [
//             SizedBox(height: 20.h),
//             Center(
//               child: Container(
//                 height: 173.h,
//                 width: 288.w,
//                 child: Image.asset('assets/images/credit card.png'),
//               ),
//             ),
//             SizedBox(height: 20.h),
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Container(
//                 height: 50.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: "   Enter your card number",
//                     hintStyle: TextStyle(color: AppColors.grey),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child: Container(
//                 height: 50.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: "   Enter card holder name",
//                     hintStyle: TextStyle(color: AppColors.grey),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.h),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 16, right: 16),
//                   child: Container(
//                     height: 50.h,
//                     width: 155.w,
//                     decoration: BoxDecoration(
//                         color: AppColors.grey3,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: "   Expires on",
//                         hintStyle: TextStyle(color: AppColors.grey),
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 50.h,
//                   width: 155.w,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "   3 Digit CVV",
//                       hintStyle: TextStyle(color: AppColors.grey),
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Theme(
//                     data: Theme.of(context).copyWith(
//                       unselectedWidgetColor: Colors.white,
//                     ),
//                     child: Checkbox(
//                         value: check1,
//                         onChanged: (bool? value) {
//                           setState(() {
//                             check1 = value;
//                           });
//                         }),
//                   ),
//                   Text(
//                     "Save for future",
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: AppColors.white,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 100.h),
//             InkWell(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => PaymentGateWay()));
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.themeColor,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Center(
//                     child: Text(
//                       'ADD',
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
