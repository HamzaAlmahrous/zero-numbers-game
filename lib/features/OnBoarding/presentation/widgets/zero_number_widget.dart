import 'package:auto_size_text/auto_size_text.dart';
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
                Row(
                  children: <Widget>[
                    Expanded( // Constrains AutoSizeText to the width of the Row
                      child: AutoSizeText(
                        homeItemModel.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        minFontSize: 14,
                        presetFontSizes: const [50, 30, 14],
                        stepGranularity: 0.1,
                        style: TextStyle(
                            fontFamily: 'iron-man',
                            color: homeItemModel.titleColor,
                            fontWeight: FontWeight.w500),
                      )
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded( // Constrains AutoSizeText to the width of the Row
                      child: AutoSizeText(
                        homeItemModel.body,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        minFontSize: 50,
                        presetFontSizes: const [50, 28, 14],
                        stepGranularity: 0.1,
                        style: TextStyle(
                            fontFamily: 'iron-man',
                            color: homeItemModel.bodyColor,
                            fontWeight: FontWeight.w500),
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
