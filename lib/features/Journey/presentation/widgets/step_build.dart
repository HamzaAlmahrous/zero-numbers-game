import 'package:flutter/material.dart';
import '../../../../core/const/styles.dart';

Step buildStep({
    required String title,
    required String subtitle,
    required Widget content,
    StepState state = StepState.indexed,
    bool isActive = false,
  }) {
    return Step(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey[600],
          fontFamily: 'quicksand',
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 24,
          color: zeroBlack,
          fontFamily: 'quicksand',
          fontWeight: FontWeight.bold,
        ),
      ),
      state: state,
      isActive: isActive,
      content: content,
    );
  }