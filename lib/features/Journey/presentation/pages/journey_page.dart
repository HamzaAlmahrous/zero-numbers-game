import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_numbers_game/core/const/styles.dart';
import 'package:zero_numbers_game/core/widgets/loading_widget.dart';
import 'package:zero_numbers_game/features/Journey/domain/entities/journey_details.dart';
import 'package:zero_numbers_game/features/Journey/presentation/bloc/journey_bloc.dart';
import 'package:zero_numbers_game/features/Journey/presentation/bloc/journey_event.dart';

import '../../../../core/utils/show_toast.dart';
import '../bloc/journey_state.dart';
import '../widgets/level_widget.dart';
import '../widgets/step_build.dart';

class JourneyPage extends StatefulWidget {
  static const String routeName = 'JourneyPage';
  const JourneyPage({Key? key}) : super(key: key);

  @override
  State<JourneyPage> createState() => _JourneyPageState();
}

class _JourneyPageState extends State<JourneyPage> {
  int currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  late JourneyDetails journeyDetails = const JourneyDetails(level: -1, currentGame: -1);

  @override
  void initState() {
    BlocProvider.of<JourneyBloc>(context).add(GetJourneyDetailsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back_ios)),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Journey",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "quicksand", fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 36),
                  ],
                ),
              ),
            ],
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: BlocConsumer<JourneyBloc, JourneyState>(
          listener: ((context, state) {
            if (state is JourneyErrorState) {
              showToast(state.message, context, false);
            }
            if (state is GetJourneyDetailsSuccessState) {
              journeyDetails = state.journeyDetails; 
            }
          }),
          builder: ((context, state) {
            if (state is JourneyLoadingState) {
              return const LoadingWidget(size: 24, stroke: 5);
            } else {
              return SingleChildScrollView(
                child: _buildStepper(StepperType.vertical, width, height),
              );
            }
          }),
        ),
      ),
    );
  }

  CupertinoStepper _buildStepper(StepperType type, double width, double height) {
    final canCancel = currentStep > 0;
    final canContinue = currentStep < journeyDetails.level;
    return CupertinoStepper(
      physics: const BouncingScrollPhysics(),
      type: type,
      currentStep: currentStep,
      onStepTapped: (step) => setState(() => currentStep = step),
      onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
      onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
      steps: [
        buildStep(
          isActive: journeyDetails.level == 0,
          state: journeyDetails.level >= 0 ? StepState.indexed : StepState.disabled,
          title: 'step 1',
          subtitle: 'beginners',
          content: Column(
            children: [
              for (int i = 0; i < 5; i++) LevelWidget(index: i, color: journeyDetails.currentGame >= i ? zeroCyan : Colors.grey, width: width, height: height)
            ],
          ),
        ),
        buildStep(
          isActive: journeyDetails.level == 1,
          state: journeyDetails.level >= 1 ? StepState.indexed : StepState.disabled,
          title: 'step 2',
          subtitle: 'intermediate',
          content: Column(
            children: [
              for (int i = 5; i < 10; i++) LevelWidget(index: i, color: journeyDetails.currentGame >= i ? zeroCyan : zeroRed, width: width, height: height)
            ],
          ),
        ),
        buildStep(
          isActive: journeyDetails.level == 2,
          state: journeyDetails.level >= 2 ? StepState.indexed : StepState.disabled,
          title: 'step 3',
          subtitle: 'advanced',
          content: Column(
            children: [
              for (int i = 10; i < 15; i++) LevelWidget(index: i, color: journeyDetails.currentGame >= i ? zeroCyan : zeroRed, width: width, height: height)
            ],
          ),
        ),
        buildStep(
          isActive: journeyDetails.level == 3,
          state: journeyDetails.level >= 3 ? StepState.indexed : StepState.disabled,
          title: 'step 4',
          subtitle: 'legend',
          content: Column(
            children: [
              for (int i = 15; i < 20; i++) LevelWidget(index: i, color: journeyDetails.currentGame >= i ? zeroCyan : zeroRed, width: width, height: height)
            ],
          ),
        ),
      ],
    );
  }
}
