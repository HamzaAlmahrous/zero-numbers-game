
// import 'package:flutter/material.dart';
// import 'package:frontend/core/const/styles.dart';
// import 'package:frontend/features/Home/presentation/pages/home_page.dart';
// import 'package:frontend/features/Profile/presentation/pages/profile_page.dart';
// import 'package:frontend/features/Manage/presentation/pages/manage_page.dart';
// import 'package:frontend/features/Settings/presentation/pages/settings_page.dart';

// // ignore: must_be_immutable
// class TabWidget extends StatelessWidget {

//   final IconData icon;
//   final String title;
//   final bool selected;
//   final int index;
//   final bool isDarkTheme;

//   TabWidget({Key? key, required this.isDarkTheme, required this.icon, required this.title, required this.selected, required this.index}) : super(key: key);

//   late double height;
//   late double width;

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: () {
//           (index == 1 && !selected)? Navigator.popAndPushNamed(context, HomePage.routeName)
//         : (index == 2 && !selected)? Navigator.popAndPushNamed(context, ManagePage.routeName)
//         : (index == 3 && !selected)? Navigator.popAndPushNamed(context, ProfilePage.routeName)
//         : (index == 4 && !selected)? Navigator.popAndPushNamed(context, SettingsPage.routeName)
//         : null;
//       },
//       child: Column(
//         children: [          
//           Expanded(
//             flex:5,
//             child: Icon(
//               icon,
//               color: selected? expoRed : isDarkTheme? expoWhite.withOpacity(0.9) : expoNavy,
//               size: height/30,
//             ),
//           ),
//           const Expanded(
//             flex:1,
//             child: SizedBox()
//           ),
//           Expanded(
//             flex:4,
//             child: Text(
//               title,
//               style: TextStyle(
//                 color: selected? expoRed : isDarkTheme? expoWhite.withOpacity(0.9) : expoNavy,
//                 fontSize: 12
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }