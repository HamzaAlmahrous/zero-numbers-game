
import 'package:flutter/material.dart';
import 'package:zero_numbers_game/core/const/styles.dart';

class Star extends StatelessWidget {
  const Star({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star_rounded,
      color: zeroRed,
      size: 100,
      shadows: const [
        BoxShadow(
          color: Colors.white,
          spreadRadius: 20,
          blurRadius: 20,
          offset: Offset(0, 0),
        ),
      ],
    );
  }
}
