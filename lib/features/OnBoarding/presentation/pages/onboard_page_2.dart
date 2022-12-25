import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_numbers_game/features/Home/presentation/pages/home.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/pages/onboard_page_3.dart';
import '../../../../core/const/styles.dart';
import '../../../../core/utils/show_toast.dart';
import '../../../../core/widgets/block.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../bloc/onboard_bloc.dart';
import '../bloc/onborad_event.dart';
import '../bloc/onborad_state.dart';

class OnBoardPage2 extends StatelessWidget {
  static const String routeName = 'OnBoardPage2';
  const OnBoardPage2({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var bloc = BlocProvider.of<OnBoardBloc>(context);
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
                  if (state is OnBoardLoadingState ||
                      state is SaveOnBoardFirstTimeSuccessState) {
                    return const Center(
                        child: LoadingWidget(size: 25, stroke: 4));
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Visibility(
                              visible: true,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'back',
                                    style: TextStyle(
                                        fontFamily: 'quicksand',
                                        color: zeroPurple,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                                onPressed: () {
                                  bloc.add(CacheOnBoardFirstTimeEvent(
                                      firstTime: false));
                                },
                                child: Text(
                                  "skip",
                                  style: TextStyle(
                                      fontFamily: 'quicksand',
                                      color: zeroCyan,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Block(height: height, width: width, widthBerRow: 4, heightBerRow: 4, number: '1'),
                                Block(height: height, width: width, widthBerRow: 4, heightBerRow: 4, number: '2'),
                                Block(height: height, width: width, widthBerRow: 4, heightBerRow: 4, number: '3'),
                              ],
                            ),
                            const SizedBox(height: 40),
                            Text("we'll move 1 to 2",
                            style: TextStyle(
                                  fontFamily: 'quicksand',
                                  color: zeroBlack,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            splashFactory: NoSplash.splashFactory),
                        onPressed: () {
                          Navigator.pushNamed(context, OnBoardPage3.routeName);
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
