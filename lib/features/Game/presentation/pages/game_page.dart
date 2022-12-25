import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/cache/cache_helper.dart';
import '../../../../get_it_init.dart' as ic;
import 'package:quickalert/quickalert.dart';
import 'package:zero_numbers_game/core/audio/audio_player.dart';
import 'package:zero_numbers_game/core/data/directions.dart';
import 'package:zero_numbers_game/core/data/hints.dart';
import 'package:zero_numbers_game/core/data/zero_number_class.dart';
import 'package:zero_numbers_game/core/widgets/block.dart';
import 'package:zero_numbers_game/features/Journey/presentation/bloc/journey_bloc.dart';
import 'package:zero_numbers_game/features/Journey/presentation/bloc/journey_state.dart';
import 'package:zero_numbers_game/features/Journey/presentation/pages/journey_page.dart';
import '../../../../core/const/styles.dart';
import '../../../../core/data/zero_number_games.dart';
import '../../../../core/utils/show_toast.dart';
import '../../../Journey/domain/entities/journey_details.dart';
import '../../../Journey/presentation/bloc/journey_event.dart';
import '../../../Settings/data/data_sources/settings_local_data_sources.dart';

class GamePage extends StatefulWidget {
  static const String routeName = 'GamePage';
  const GamePage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late JourneyDetails journeyDetails = const JourneyDetails(level: -1, currentGame: -1);

  @override
  void initState() {
    levels[widget.index].reset();
    BlocProvider.of<JourneyBloc>(context).add(GetJourneyDetailsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ZeroNumberGame zeroNumberGame = levels[widget.index];

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: BlocListener<JourneyBloc, JourneyState>(
            listener: ((context, state) {
              if (state is JourneyErrorState) {
                showToast(state.message, context, false);
              }
              if (state is GetJourneyDetailsSuccessState) {
                journeyDetails = state.journeyDetails;
              }
            }),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            zeroNumberGame.reset();
                          });
                        },
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: zeroPurple,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: zeroWhite,
                            child: CircleAvatar(
                              backgroundColor: zeroLightPurple,
                              radius: 27,
                              child: Icon(CupertinoIcons.arrow_2_circlepath,
                                  color: zeroWhite, size: 37),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          hint(context, widget.index, zeroNumberGame);
                        },
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: zeroCyan,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: zeroWhite,
                            child: CircleAvatar(
                              backgroundColor: zeroLightBlue,
                              radius: 27,
                              child: Icon(Icons.lightbulb_outline_rounded,
                                  color: zeroWhite, size: 37),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < zeroNumberGame.n; i++)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int j = 0; j < zeroNumberGame.m; j++)
                                Block(
                                  height: height,
                                  heightBerRow: zeroNumberGame.n.toDouble() + 1,
                                  width: width,
                                  widthBerRow: zeroNumberGame.m.toDouble() + 1,
                                  number: zeroNumberGame.board[i][j].toString(),
                                  upFunction: () {
                                    zeroNumberGame.move(i, j, Directions.top);
                                    win(context, zeroNumberGame, journeyDetails,
                                        widget.index);
                                    if (lose(context, zeroNumberGame)) {
                                      zeroNumberGame.reset();
                                    }
                                    setState(() {});
                                  },
                                  downFunction: () {
                                    zeroNumberGame.move(i, j, Directions.down);
                                    win(context, zeroNumberGame, journeyDetails,
                                        widget.index);
                                    if (lose(context, zeroNumberGame)) {
                                      zeroNumberGame.reset();
                                    }
                                    setState(() {});
                                  },
                                  leftFunction: () {
                                    zeroNumberGame.move(i, j, Directions.left);
                                    win(context, zeroNumberGame, journeyDetails,
                                        widget.index);
                                    if (lose(context, zeroNumberGame)) {
                                      zeroNumberGame.reset();
                                    }
                                    setState(() {});
                                  },
                                  rightFunction: () {
                                    zeroNumberGame.move(i, j, Directions.right);
                                    win(context, zeroNumberGame, journeyDetails, widget.index);
                                    if (lose(context, zeroNumberGame)) {
                                      zeroNumberGame.reset();
                                    }
                                    setState(() {});
                                  },
                                )
                            ],
                          ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

void win(context, ZeroNumberGame game, JourneyDetails journeyDetails, int index) {
  CacheHelper cacheHelper = ic.getIt<CacheHelper>();
  bool? onAudio = cacheHelper.getData(key: cachedSettings);
  onAudio ??= true;
  Player player = Player(audioPlayer: AudioPlayer());
  if (game.checkWin()) {
    if (journeyDetails.currentGame <= index) {
      int level = index < 4 ? 0 : index < 9 ? 1 : index < 14 ? 2 : 3;
      BlocProvider.of<JourneyBloc>(context).add(SaveJourneyDetailsEvent(
          journeyDetails: JourneyDetails(currentGame: index + 1, level: level)));
    }
    if(onAudio){
      player.playAssetSound('sounds/win.wav');
    }
    QuickAlert.show(
      context: context,
      confirmBtnColor: zeroPurple,
      type: QuickAlertType.success,
      onConfirmBtnTap: () {
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pushNamed(context, JourneyPage.routeName);
      },
    );
  }
  else{
    if(onAudio){
      player.playAssetSound('sounds/move.wav');
    }
  }
}

bool lose(context, ZeroNumberGame game) {
  if (game.checkLose()) {
    QuickAlert.show(
      context: context,
      confirmBtnColor: zeroPurple,
      type: QuickAlertType.error,
      title: "You Lose",
      confirmBtnText: "Reset",
      onConfirmBtnTap: () {
        Navigator.pop(context);
      },
    );
    return true;
  } else {
    return false;
  }
}

void hint(context, int index, ZeroNumberGame zeroNumberGame) {
  if(zeroNumberGame.checkWin()){
    QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      confirmBtnColor: zeroPurple,
      title: "YOU WIN",
    );
  }
  else if (index == 19) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.info,
      confirmBtnColor: zeroPurple,
      title: "it's the finale\ndo it by your self",
    );
  } else {
    bool got = true;
    for (int i = 0; i < levelsHints[index].length; i++) {
      // print(i);
      if (levelsHints[index][i].equals(zeroNumberGame)) {
        if (i != 0) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.info,
            confirmBtnColor: zeroPurple,
            title:"guess where's the move\nand do it",
            text: levelsHints[index][i - 1].board.toString(),
          );
          got = false;
        }
      }
    }
    if (got) {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.info,
        confirmBtnColor: zeroPurple,
        title:"you're in the wrong path, you should reset the game to get the hints",
      );
    }
  }
}
