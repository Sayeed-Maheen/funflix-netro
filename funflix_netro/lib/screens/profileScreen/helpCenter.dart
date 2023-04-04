// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:funflex_ott/Screens/profileScreen/contactUs.dart';
// import 'package:funflex_ott/Screens/profileScreen/faq.dart';
// import '../../colors/colors.dart';
//
// class HelpCenterProfileProfile extends StatefulWidget {
//   const HelpCenterProfileProfile({super.key});
//
//   @override
//   State<HelpCenterProfileProfile> createState() =>
//       _HelpCenterProfileProfileState();
// }
//
// class _HelpCenterProfileProfileState extends State<HelpCenterProfileProfile>
//     with SingleTickerProviderStateMixin {
//   int _selectedIndex = 0;
//   late TabController tabController;
//
//   @override
//   void initState() {
//     tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.black2,
//       appBar: AppBar(
//         title: Text('Help Center'),
//         backgroundColor: AppColors.black2,
//         elevation: 0,
//         bottom: TabBar(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           unselectedLabelColor: AppColors.white,
//           labelColor: AppColors.white,
//           controller: tabController,
//           tabs: [
//             Tab(
//               text: 'FAQ',
//             ),
//             Tab(
//               text: 'Contact Us',
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: TabBarView(
//             controller: tabController,
//             children: [
//               Faq(),
//               ContactUs(),
//             ],
//           )),
//     );
//   }
// }
