import 'package:flutter/material.dart';
import 'package:zero_numbers_game/core/entities/home_item_model.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/widgets/clip_path.dart';

class SmallHexagon extends StatelessWidget {
  const SmallHexagon({
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
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: homeItemModel.gradientColor,
                spreadRadius: 0.2,
                blurRadius: 70,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: ClipPath(
            clipper: HexagonClipper(),
            child: Container(
              width: width * 0.1,
              height: height * 0.05,
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
            ),
          ),
        ),
      ],
    );
  }
}
