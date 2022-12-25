import 'dart:math';
import 'package:flutter/material.dart';

import '../const/styles.dart';

// ignore: must_be_immutable
class Block extends StatelessWidget {
  Block({
    Key? key,
    required this.width,
    required this.height,
    required this.widthBerRow,
    required this.heightBerRow,
    required this.number,
    this.downFunction,
    this.upFunction,
    this.leftFunction,
    this.rightFunction,

  }) : super(key: key);

  final double width;
  final double height;
  final double widthBerRow;
  final double heightBerRow;
  final String number;
  Function? leftFunction, rightFunction, upFunction, downFunction;

  /*
  
  h = 16
  w = 4

  s = bn * bm = x
  s1 = h * w = y

  x/y
   
  */

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        int sensitivity = 8;
        if (details.delta.dy > sensitivity) {
            // Down Swipe
            downFunction!();
        } else if(details.delta.dy < -sensitivity){
            // Up Swipe
            upFunction!();
        }
      },
      onHorizontalDragUpdate: (details) {  
        int sensitivity = 8;
        if (details.delta.dx > sensitivity) {
            // Right Swipe
            rightFunction!();
        } else if(details.delta.dx < -sensitivity){
            //Left Swipe
            leftFunction!();
        }
      },
      child: Container(
        margin: const EdgeInsets.all(2.0),
        width: min((width / (widthBerRow * 1.2)),(height / (heightBerRow * 1.2))),
        height: min((width / (widthBerRow * 1.2)),(height / (heightBerRow * 1.2))),
        decoration: number != "-1" ? BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
          color: zeroPurple,
          border:Border.all(color: zeroWhite, width: 3),
        ) : const BoxDecoration(),
        child: number != "-1" ? Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            number == '0' ? '' : number,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'quicksand',
                color: zeroWhite,
                fontSize: (width / widthBerRow) / 3,
                fontWeight: FontWeight.bold),
          ),
        ) : Container(),
      ),
    );
  }
}
