// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../colors/colors.dart';
//
// class DownloadProfile extends StatefulWidget {
//   const DownloadProfile({super.key});
//
//   @override
//   State<DownloadProfile> createState() => _DownloadProfileState();
// }
//
// class _DownloadProfileState extends State<DownloadProfile> {
//   bool isSwitched = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.black2,
//       appBar: AppBar(
//         title: Text('Download'),
//         backgroundColor: AppColors.black2,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Container(
//           child: Column(
//             children: [
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(width: 12.w),
//                     Icon(
//                       Icons.wifi,
//                       color: AppColors.white,
//                     ),
//                     SizedBox(width: 12.w),
//                     Text(
//                       '  Wi-Fi Only',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         color: AppColors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                     SizedBox(width: 135.w),
//                     Switch(
//                       value: isSwitched,
//                       onChanged: (value) {
//                         setState(() {
//                           isSwitched = value;
//                           print(isSwitched);
//                         });
//                       },
//                       activeTrackColor: AppColors.lightRed,
//                       activeColor: AppColors.themeColor,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Smart Download",
//                       prefixIcon: Icon(
//                         Icons.download_rounded,
//                         color: AppColors.white,
//                         size: 26,
//                       ),
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
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Video Quality",
//                       prefixIcon: Icon(
//                         Icons.high_quality,
//                         color: AppColors.white,
//                         size: 26,
//                       ),
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
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Audio Quality",
//                       prefixIcon: Icon(
//                         Icons.mic,
//                         color: AppColors.white,
//                         size: 26,
//                       ),
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
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Delete all downloads",
//                       prefixIcon: Icon(
//                         Icons.download_rounded,
//                         color: AppColors.white,
//                         size: 26,
//                       ),
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
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: TextField(
//                   enabled: false,
//                   decoration: InputDecoration(
//                       hintText: "   Delete Cache",
//                       prefixIcon: Icon(
//                         Icons.delete_forever_outlined,
//                         color: AppColors.white,
//                         size: 26,
//                       ),
//                       hintStyle: TextStyle(color: AppColors.white),
//                       border: InputBorder.none,
//                       suffixIcon: Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         color: AppColors.white,
//                         size: 16,
//                       )),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
