import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_numbers_game/core/entities/home_item_model.dart';
import 'package:zero_numbers_game/features/Home/presentation/pages/home.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/pages/onboard_page_2.dart';
import '../../../../core/const/styles.dart';
import '../../../../core/utils/show_toast.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../bloc/onboard_bloc.dart';
import '../bloc/onborad_state.dart';
import '../widgets/zero_number_widget.dart';

class OnBoardPage1 extends StatelessWidget {
  static const String routeName = 'OnBoardPage1';
  const OnBoardPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BlocListener<OnBoardBloc, OnBoardState>(
        listener: (context, state) {
          if (state is OnBoardErrorState) {
            showToast(state.message, context, false);
          } else if (state is SaveOnBoardFirstTimeSuccessState) {
            Navigator.pushNamedAndRemoveUntil(
                context, Home.routeName, (route) => false);
          }
        },
        child: SafeArea(
          child: Scaffold(
            body: Container(
              height: height / 1.1,
              padding: const EdgeInsets.all(24),
              child: BlocBuilder<OnBoardBloc, OnBoardState>(
                builder: (context, state) {
                  if (state is OnBoardLoadingState || state is SaveOnBoardFirstTimeSuccessState) {
                    return const Center(child: LoadingWidget(size: 25, stroke: 4));
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ZeroNumbersWidget(width: width, height: height, homeItemModel: HomeItemModel(body: "-GAME-", title: "Zero\nNumbers", gradientColor: Colors.grey.withOpacity(0.7), primeColor: zeroWhite, bodyColor: zeroPurple, titleColor: zeroBlack),),
                      ),
                      const SizedBox(height: 40),
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            splashFactory: NoSplash.splashFactory),
                        onPressed: () {
                          Navigator.pushNamed(context, OnBoardPage2.routeName);
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: zeroCyan,
                          ),
                          child: Center(
                            child: Text(
                              "next",
                              style: TextStyle(
                                  fontFamily: 'quicksand',
                                  color: zeroWhite,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ));
  }
}

