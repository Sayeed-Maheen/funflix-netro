// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../colors/colors.dart';
//
// class NotificationProfile extends StatefulWidget {
//   const NotificationProfile({super.key});
//
//   @override
//   State<NotificationProfile> createState() => _NotificationProfileState();
// }
//
// class _NotificationProfileState extends State<NotificationProfile> {
//   bool isSwitched = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.black2,
//       appBar: AppBar(
//         title: Text('Notifications'),
//         backgroundColor: AppColors.black2,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Container(
//           child: Column(
//             children: [
//               Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '  General Notifications',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Switch(
//                           value: isSwitched,
//                           onChanged: (value) {
//                             setState(() {
//                               isSwitched = value;
//                               print(isSwitched);
//                             });
//                           },
//                           activeTrackColor: AppColors.lightRed,
//                           activeColor: AppColors.themeColor,
//                         ),
//                       ],
//                     ),
//                   )),
//               SizedBox(height: 10.h),
//               Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '  New Arival',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Switch(
//                           value: isSwitched,
//                           onChanged: (value) {
//                             setState(() {
//                               isSwitched = value;
//                               print(isSwitched);
//                             });
//                           },
//                           activeTrackColor: AppColors.lightRed,
//                           activeColor: AppColors.themeColor,
//                         ),
//                       ],
//                     ),
//                   )),
//               SizedBox(height: 10.h),
//               Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '  New Services Available',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Switch(
//                           value: isSwitched,
//                           onChanged: (value) {
//                             setState(() {
//                               isSwitched = value;
//                               print(isSwitched);
//                             });
//                           },
//                           activeTrackColor: AppColors.lightRed,
//                           activeColor: AppColors.themeColor,
//                         ),
//                       ],
//                     ),
//                   )),
//               SizedBox(height: 10.h),
//               Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '  New release movie',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Switch(
//                           value: isSwitched,
//                           onChanged: (value) {
//                             setState(() {
//                               isSwitched = value;
//                               print(isSwitched);
//                             });
//                           },
//                           activeTrackColor: AppColors.lightRed,
//                           activeColor: AppColors.themeColor,
//                         ),
//                       ],
//                     ),
//                   )),
//               SizedBox(height: 10.h),
//               Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '  Apps update',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Switch(
//                           value: isSwitched,
//                           onChanged: (value) {
//                             setState(() {
//                               isSwitched = value;
//                               print(isSwitched);
//                             });
//                           },
//                           activeTrackColor: AppColors.lightRed,
//                           activeColor: AppColors.themeColor,
//                         ),
//                       ],
//                     ),
//                   )),
//               SizedBox(height: 10.h),
//               Container(
//                   height: 55.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: AppColors.grey3,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '  Subscriptions',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Switch(
//                           value: isSwitched,
//                           onChanged: (value) {
//                             setState(() {
//                               isSwitched = value;
//                               print(isSwitched);
//                             });
//                           },
//                           activeTrackColor: AppColors.lightRed,
//                           activeColor: AppColors.themeColor,
//                         ),
//                       ],
//                     ),
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
