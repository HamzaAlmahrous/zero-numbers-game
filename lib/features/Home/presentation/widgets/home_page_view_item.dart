import 'package:flutter/material.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/widgets/zero_number_widget.dart';
import '../../../../core/entities/home_item_model.dart';

// ignore: non_constant_identifier_names
Widget HomePageView(HomeItemModel model, double width, double height, Function onPressed, context) =>
    Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height*0.1,
          ),
          TextButton(
            onPressed: (){
              onPressed();
            },
            child: ZeroNumbersWidget(width: width, height: height, homeItemModel: model),
          ),
        ],
      ),
    );
