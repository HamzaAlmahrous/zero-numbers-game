import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/const/styles.dart';
import '../../../Game/presentation/pages/game_page.dart';

class LevelWidget extends StatelessWidget {
  const LevelWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.index,
    required this.color,
  }) : super(key: key);

  final double height, width;
  final int index;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        if(color == zeroCyan){
          Navigator.pushNamed(context, GamePage.routeName, arguments: index);
        }
      },
      child: Container(
        height: height * 0.07,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded( // Constrains AutoSizeText to the width of the Row
                child: AutoSizeText(
                  'Level ${index + 1}',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  minFontSize: 32,
                  presetFontSizes: const [32, 24, 14],
                  stepGranularity: 0.1,
                  style: TextStyle(
                    color: zeroWhite,
                    fontFamily: 'quicksand',
                    fontWeight: FontWeight.w700,
                  ),
                )
              ),
              Icon(Icons.arrow_forward_ios_sharp, color: zeroWhite, size: 32),
            ],
          ),
        ),
      ),
    );
  }
}
