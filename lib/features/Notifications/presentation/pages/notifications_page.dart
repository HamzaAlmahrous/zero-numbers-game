import 'package:flutter/material.dart';
import 'package:zero_numbers_game/core/const/styles.dart';

// ignore: must_be_immutable
class NotificationPage extends StatelessWidget {
  NotificationPage({super.key, required this.payload});
  static const String routeName = 'NotificationPage';
  
  late double height;
  late double width;


  final String payload;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  zeroLightBlue,
                  zeroLightPink,
                ],
              ),
            ),
            child: payload == 'there\'s no notifications' ? NoNotifications(payload: payload) : NotificationsFound(payload: payload, width: width, height: height,),
          ),
    ));
  }
}

class NoNotifications extends StatelessWidget {
  const NoNotifications({
    Key? key,
    required this.payload,
  }) : super(key: key);

  final String payload;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.notifications_rounded, color: zeroWhite, size: 50),
        const SizedBox(height: 50),
        Text(payload,
        textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'iron-man',
            color: zeroWhite,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class NotificationsFound extends StatelessWidget {
  NotificationsFound({
    Key? key,
    required this.payload,
    required this.height,
    required this.width,
  }) : super(key: key);

  
  late double height;
  late double width;

  final String payload;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(20.0),
          width: width,
          height: height/6,
          decoration: BoxDecoration(
            color: zeroWhite,
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Row(
            children: [
              Icon(Icons.notifications_rounded, color: zeroBlack, size: 50),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(payload,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                        fontFamily: 'quicksand',
                        color: zeroBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
