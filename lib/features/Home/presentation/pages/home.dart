import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zero_numbers_game/core/const/styles.dart';
import 'package:zero_numbers_game/features/Home/presentation/bloc/home_bloc.dart';
import 'package:zero_numbers_game/features/Home/presentation/bloc/home_state.dart';
import 'package:zero_numbers_game/features/Home/presentation/widgets/home_page_view_item.dart';
import 'package:zero_numbers_game/features/Journey/presentation/pages/journey_page.dart';
import 'package:zero_numbers_game/features/Notifications/presentation/pages/notifications_page.dart';
import 'package:zero_numbers_game/features/Settings/presentation/page/settings_page.dart';
import '../../../../get_it_init.dart' as ic;
import '../../../../core/cache/cache_helper.dart';
import '../../../../core/entities/home_item_model.dart';
import '../../../../core/services/notifications/local_notification_service.dart';

class Home extends StatefulWidget {
  static const String routeName = 'HomePage';
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final LocalNotificationService service;
  late double height;
  late double width;
  CacheHelper cacheHelper = ic.getIt<CacheHelper>();
  @override
  void initState() {
    service = LocalNotificationService();
    service.initialize();
    listenToNotification();
    super.initState();
  }

  PageController boardController = PageController();

  List<HomeItemModel> homePagesView = [
    HomeItemModel(body: "-GAME-", title: "Zero\nNumbers", gradientColor: Colors.grey.withOpacity(0.7), primeColor: zeroWhite, bodyColor: zeroPurple, titleColor: zeroBlack),
    HomeItemModel(body: "-JOURNEY-", title: "COMPLETE\nYOUR", gradientColor: zeroRed.withOpacity(0.7), primeColor: zeroWhite, bodyColor: zeroPurple, titleColor: zeroBlack),
    HomeItemModel(body: "-SETTINGS-", title: "CHANGE\nTHE", gradientColor: zeroCyan.withOpacity(0.7), primeColor: zeroWhite, bodyColor: zeroPurple, titleColor: zeroBlack),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    List<Function> onPresseds = [
      (){},
      () async {
        Navigator.pushNamed(context, JourneyPage.routeName);
        bool? notification = cacheHelper.getData(key: "notification");
        notification ??= true;
        if(notification){
          await service.showScheduledNotification(
            seconds: 10800,
            id: 0,
            title: 'Zero Number',
            body: 'Let\'s complete\n our journey',
            payload: 'payload navigation',
          );
        }else{
          cacheHelper.saveData(key: "notification", value: false);
        }
      },
      (){Navigator.pushNamed(context, SettingsPage.routeName);},
    ];

    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {},
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  zeroLightBlue,
                  zeroLightPink,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12,12,0,0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => NotificationPage(payload: 'there\'s no notifications'))));
                    }, child: const CircleAvatar(radius: 30, child: Icon(Icons.notifications, size: 34))),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: boardController,
                    itemBuilder: ((context, index) => HomePageView(homePagesView[index], width, height, onPresseds[index], context)),
                    itemCount: homePagesView.length,
                  ),
                ),
                SizedBox(
                  height: height/7,
                ),
                SmoothPageIndicator(
                  controller: boardController,
                  count: homePagesView.length,
                  effect: JumpingDotEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    activeDotColor: zeroPurple,
                    dotColor: zeroWhite,
                  ),
                ),
                const SizedBox(
                  height: 28,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void listenToNotification() => service.onNotificationClick.stream.listen(onNotificationListener);

  void onNotificationListener(String? payload) {
    if (payload != null && payload.isNotEmpty) {
      Navigator.push(context, MaterialPageRoute(builder: ((context) => NotificationPage(payload: 'Let\'s complete our journey'))));
    }
  }
}
