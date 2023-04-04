// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/profileScreen.dart';
//
// import '../../colors/colors.dart';
//
// enum SingingCharacter { us, uk }
//
// enum LanguageCharacter { mandarin, spanish, hindi, french, arabic, bangla }
//
// class LanguageProfile extends StatefulWidget {
//   const LanguageProfile({super.key});
//
//   @override
//   State<LanguageProfile> createState() => _LanguageProfileState();
// }
//
// class _LanguageProfileState extends State<LanguageProfile> {
//   late SingingCharacter? _character = SingingCharacter.us;
//   late LanguageCharacter? _character2 = LanguageCharacter.bangla;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.black2,
//       appBar: AppBar(
//         title: Text('Language'),
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
//                 'Suggested',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.white,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: ListTile(
//                   leading: Text(
//                     'English (US)',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                   trailing: Radio<SingingCharacter>(
//                     value: SingingCharacter.us,
//                     groupValue: _character,
//                     onChanged: (SingingCharacter? value) {
//                       setState(() {
//                         _character = value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: ListTile(
//                   leading: Text(
//                     'English (UK)',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                   trailing: Radio<SingingCharacter>(
//                     value: SingingCharacter.uk,
//                     groupValue: _character,
//                     onChanged: (SingingCharacter? value) {
//                       setState(() {
//                         _character = value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Text(
//                 'Language',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.white,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: ListTile(
//                   leading: Text(
//                     'Mandarin',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                   trailing: Radio<LanguageCharacter>(
//                     value: LanguageCharacter.bangla,
//                     groupValue: _character2,
//                     onChanged: (LanguageCharacter? value) {
//                       setState(() {
//                         _character2 = value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: ListTile(
//                   leading: Text(
//                     'Spanish',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                   trailing: Radio<LanguageCharacter>(
//                     value: LanguageCharacter.spanish,
//                     groupValue: _character2,
//                     onChanged: (LanguageCharacter? value) {
//                       setState(() {
//                         _character2 = value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: ListTile(
//                   leading: Text(
//                     'Hindi',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                   trailing: Radio<LanguageCharacter>(
//                     value: LanguageCharacter.hindi,
//                     groupValue: _character2,
//                     onChanged: (LanguageCharacter? value) {
//                       setState(() {
//                         _character2 = value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: ListTile(
//                   leading: Text(
//                     'French',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                   trailing: Radio<LanguageCharacter>(
//                     value: LanguageCharacter.french,
//                     groupValue: _character2,
//                     onChanged: (LanguageCharacter? value) {
//                       setState(() {
//                         _character2 = value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 55.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: AppColors.grey3,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: ListTile(
//                   leading: Text(
//                     'Arabic',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                   trailing: Radio<LanguageCharacter>(
//                     value: LanguageCharacter.arabic,
//                     groupValue: _character2,
//                     onChanged: (LanguageCharacter? value) {
//                       setState(() {
//                         _character2 = value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
