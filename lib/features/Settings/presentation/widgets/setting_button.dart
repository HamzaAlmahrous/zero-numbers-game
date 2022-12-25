import 'package:flutter/material.dart';

import '../../../../core/const/styles.dart';
import '../../domain/entities/settings.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({
    Key? key,
    required this.settings,
    required this.onPressed,
    required this.iconData,
    required this.title,
  }) : super(key: key);

  final Settings settings;
  final Function onPressed;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      margin: const EdgeInsets.all(10.0),
      child: MaterialButton(
          color: settings.audioOn ? zeroDarkGreen : zeroRed,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          onPressed: (){
            onPressed();
          },
          elevation: 18,
          padding: const EdgeInsets.all(30.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconData, color: zeroWhite, size: 34),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: "quicksand",
                    color: zeroWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(width: 30),
              ],
            ),
      ),
    );
  }
}
