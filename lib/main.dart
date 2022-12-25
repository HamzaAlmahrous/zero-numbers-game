import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_numbers_game/core/cache/cache_helper.dart';
import 'package:zero_numbers_game/core/const/styles.dart';
import 'package:zero_numbers_game/features/Home/presentation/pages/home.dart';
import 'package:zero_numbers_game/features/Journey/data/models/journey_details_model.dart';
import 'package:zero_numbers_game/features/Journey/presentation/pages/journey_page.dart';
import 'package:zero_numbers_game/features/Notifications/presentation/pages/notifications_page.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/pages/onboard_page_2.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/pages/onboard_page_3.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/pages/onboard_page_4.dart';
import 'package:zero_numbers_game/features/Settings/data/data_sources/settings_local_data_sources.dart';
import 'package:zero_numbers_game/features/Settings/presentation/page/settings_page.dart';
import 'features/Game/presentation/pages/game_page.dart';
import 'features/Home/presentation/bloc/home_bloc.dart';
import 'features/Journey/data/data_sources/journey_local_data_sources.dart';
import 'features/Journey/presentation/bloc/journey_bloc.dart';
import 'features/OnBoarding/data/data_sources/onboard_local_data_source.dart';
import 'features/OnBoarding/presentation/bloc/onboard_bloc.dart';
import 'features/OnBoarding/presentation/pages/onboard_page_1.dart';
import 'features/Settings/presentation/bloc/settings_bloc.dart';
import 'get_it_init.dart' as ic;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ic.init();
  CacheHelper cacheHelper = ic.getIt<CacheHelper>();

  bool? onBoarding = cacheHelper.getData(key: cachedOnBoradFirstTime);
  bool? onAudio = cacheHelper.getData(key: cachedSettings);
  bool? notification = cacheHelper.getData(key: "notification");
  onBoarding ??= true;
  onAudio ??= true;
  notification ??= true;

  if(onBoarding){
    cacheHelper.saveData(key: cachedJourneyDetails, value: json.encode(const JourneyDetailsModel(level: 0, currentGame: 0).toJson()));
  }
  if(onAudio){
    cacheHelper.saveData(key: cachedSettings, value: true);
  }
  if(notification){
    cacheHelper.saveData(key: "notification", value: true);
  }

  String startPage = onBoarding ? OnBoardPage1.routeName : Home.routeName;

  runApp(MyApp(startPage: startPage));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.startPage}) : super(key: key);

  final String startPage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Zero Numbers',
        theme: lightTheme,
        initialRoute: startPage,
        onGenerateRoute: (settings) {
          if (settings.name == OnBoardPage1.routeName) {
            return PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) => SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(a),
                child: c,
              ),
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) =>
                  MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => ic.getIt<OnBoardBloc>(),
                  ),
                ],
                child: const OnBoardPage1(),
              ),
            );
          } else if (settings.name == OnBoardPage2.routeName) {
            return PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) => SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(a),
                child: c,
              ),
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) =>
                  MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => ic.getIt<OnBoardBloc>(),
                  ),
                ],
                child: const OnBoardPage2(),
              ),
            );
          } else if (settings.name == OnBoardPage3.routeName) {
            return PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder: (_, a, __, c) => SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(a),
                      child: c,
                    ),
                settings: settings,
                pageBuilder: (context, animation, secondaryAnimation) {
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => ic.getIt<OnBoardBloc>(),
                      ),
                    ],
                    child: const OnBoardPage3(),
                  );
                });
          } else if (settings.name == OnBoardPage4.routeName) {
            return PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) =>
                  MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => ic.getIt<OnBoardBloc>(),
                  ),
                ],
                child: const OnBoardPage4(),
              ),
            );
          } else if (settings.name == Home.routeName) {
            return PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) => SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(a),
                child: c,
              ),
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) =>
                  MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => ic.getIt<HomeBloc>(),
                  ),
                ],
                child: const Home(),
              ),
            );
          } else if (settings.name == JourneyPage.routeName) {
            return PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) => SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(a),
                child: c,
              ),
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) =>
                  MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => ic.getIt<JourneyBloc>(),
                  ),
                ],
                child: const JourneyPage(),
              ),
            );
          } else if (settings.name == GamePage.routeName) {
            var argument = settings.arguments as int;
            return PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 200),
              transitionsBuilder: (_, a, __, c) => SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(a),
                child: c,
              ),
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) => 
              MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => ic.getIt<JourneyBloc>(),
                  ),
                ],
                child: GamePage(index: argument),
              ),
            );
          }else if (settings.name == SettingsPage.routeName) {
            return PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 200),
              transitionsBuilder: (_, a, __, c) => SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(a),
                child: c,
              ),
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) => 
              MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => ic.getIt<SettingsBloc>(),
                  ),
                ],
                child: const SettingsPage(),
              ),
            );
          }else if (settings.name == NotificationPage.routeName) {
            var argument = settings.arguments as String;
            return PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 200),
              transitionsBuilder: (_, a, __, c) => SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(a),
                child: c,
              ),
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) => NotificationPage(payload: argument),
            );
          }
          return null;
        },
      );
  }
}
