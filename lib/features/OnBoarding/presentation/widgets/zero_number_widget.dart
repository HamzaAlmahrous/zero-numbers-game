import 'package:flutter/material.dart';
import 'package:zero_numbers_game/core/entities/home_item_model.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/widgets/clip_path.dart';

class ZeroNumbersWidget extends StatelessWidget {
  const ZeroNumbersWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.homeItemModel,
  }) : super(key: key);

  final double width;
  final double height;
  final HomeItemModel homeItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipPath(
          clipper: HexagonClipper(),
          child: Container(
            width: width * 0.75,
            height: height * 0.4,
            decoration: BoxDecoration(
              color: homeItemModel.primeColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: homeItemModel.gradientColor,
                  spreadRadius: 5,
                  blurRadius: 15,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  homeItemModel.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'iron-man',
                      color: homeItemModel.titleColor,
                      fontSize: 50,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  homeItemModel.body,
                  style: TextStyle(
                      fontFamily: 'iron-man',
                      color: homeItemModel.bodyColor,
                      fontSize: 44,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
