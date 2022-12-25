// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:frontend/core/widgets/tab_widget.dart';
// import 'package:frontend/features/Notifications/presentation/pages/notifications_page.dart';
// import 'package:frontend/translations/local_keys.g.dart';
// import 'package:easy_localization/easy_localization.dart' as localized;
// import '../services/theme_controller.dart';

// // ignore: must_be_immutable
// class HomeLayout extends ConsumerWidget {

//   late double height;
//   late double width;
//   final Widget body;
//   final int index;

//   HomeLayout({Key? key, required this.body, required this.index}) : super(key: key);

//   Future<bool> isDarkTheme(ref) async {
//    bool dark = await ref.watch(themeProvider.notifier).get();
//    log(dark.toString());
//    return dark;
//   }

//   @override
//   Widget build(BuildContext context, ref) {
//     return FutureBuilder(
//       future: isDarkTheme(ref),
//       initialData: true,
//       builder: (context, snapshot) => SafeArea(
//         child: LayoutBuilder(
//           builder: (context, BoxConstraints constraints) {
//             height = constraints.maxHeight;
//             width = constraints.maxWidth;
//             return Scaffold(
//               body: SizedBox(
//                 height: height,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       height: height*0.12,
//                       padding: const EdgeInsets.all(24),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         textDirection: TextDirection.ltr,
//                         children: <Widget>[
//                           const Text(
//                             'Expoverse',
//                             style: TextStyle(
//                               fontSize: 30,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           IconButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, NotificationsPage.routeName);
//                               // LocalNotificationService.displayTest('testing notification');
//                             },
//                             icon: const Icon(Icons.notifications, size: 30,)),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 0.81*height,
//                       child: body, 
//                     ),
//                     Container(
//                       width: width,
//                       height: height*0.07,
//                       padding: const EdgeInsets.fromLTRB(30, 4, 30, 3),
//                       // TODO: getTheme
//                       //color: expoWhite,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           TabWidget(isDarkTheme: snapshot.data as bool, icon: Icons.home, title: LocaleKeys.home.tr(), selected: index == 1, index: 1),
//                           TabWidget(isDarkTheme: snapshot.data as bool, icon: Icons.task_alt_rounded, title: LocaleKeys.manage.tr(), selected: index == 2, index: 2),
//                           TabWidget(isDarkTheme: snapshot.data as bool, icon: Icons.person, title: LocaleKeys.profile.tr(), selected: index == 3, index: 3),
//                           TabWidget(isDarkTheme: snapshot.data as bool, icon: Icons.settings, title: LocaleKeys.settings.tr(), selected: index == 4, index: 4),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),    
//             );
//           }
//         ),
//       ),
//     );
    
//   }
// }