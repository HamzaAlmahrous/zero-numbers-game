// import 'package:flutter/material.dart';
// import '/core/const/styles.dart';

// import '../const/enums.dart';


// class DateCard extends StatelessWidget {

//   final DateTime date;
//   const DateCard({Key? key, required this.date}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 68,
//       width: 65,
//       padding: const EdgeInsets.all(4),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.white,
//       ),
//       child: Center(
//         child: RichText(
//           text: TextSpan(
//             text: date.day.toString(),
//             style: TextStyle(
//               fontSize: 20,
//               color: expoNavy,
//               fontWeight: FontWeight.w700,
//             ),
//             children: [
//               TextSpan(
//                 text: '\n${month[date.month]}',
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w700,
//                   color: expoNavy,

//                 ),
//               )
//             ]
//           )
//         ),
//       ),
//     );
//   }
// }