import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/quickalert.dart';
import 'package:zero_numbers_game/core/widgets/loading_widget.dart';
import 'package:zero_numbers_game/features/Settings/presentation/bloc/settings_bloc.dart';
import 'package:zero_numbers_game/features/Settings/presentation/bloc/settings_event.dart';
import 'package:zero_numbers_game/features/Settings/presentation/bloc/settings_state.dart';

import '../../../../core/services/notifications/local_notification_service.dart';
import '../../../../core/utils/show_toast.dart';
import '../../../Notifications/presentation/pages/notifications_page.dart';
import '../../domain/entities/settings.dart';
import '../widgets/setting_button.dart';

class SettingsPage extends StatefulWidget {
  static const String routeName = 'SettingsPage';
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late final LocalNotificationService service;
  late Settings settings = Settings(audioOn: false);

  @override
  void initState() {
    service = LocalNotificationService();
    service.initialize();
    listenToNotification();
    BlocProvider.of<SettingsBloc>(context).add(GetSettingsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<SettingsBloc, SettingsState>(
          listener: ((context, state) {
            if (state is SettingsErrorState) {
              showToast(state.message, context, false);
            }
            if (state is GetSettingsSuccessState) {
              settings = state.settings;
            }
            if (state is SaveSettingsSuccessState) {
              BlocProvider.of<SettingsBloc>(context).add(GetSettingsEvent());
            }
          }),
          builder: ((context, state) {
            if (state is SettingsLoadingState) {
              return SafeArea(
                child: Scaffold(
                  appBar: AppBar(
                    title: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Settings",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "quicksand",
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
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
                  body: const LoadingWidget(size: 24, stroke: 5),
                ),
              );
            } else {
              return SafeArea(
                child: Scaffold(
                  appBar: AppBar(
                    title: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Settings",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "quicksand",
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
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
                  body: SizedBox(
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SettingButton(
                          title: "Sound",
                          iconData: Icons.audiotrack_outlined,
                          settings: settings,
                          onPressed: () {
                            BlocProvider.of<SettingsBloc>(context).add(SaveSettingsEvent(audioOn: settings.audioOn ? false : true));
                          },
                        ),
                        SettingButton(
                          title: "Notifi Me",
                          iconData: Icons.notification_add_rounded,
                          settings: Settings(audioOn: true),
                          onPressed: () async{
                            await service.showScheduledNotification(
                              seconds: 3,
                              id: 0,
                              title: 'Zero Number',
                              body: 'Let\'s complete our journey',
                              payload: 'payload navigation',
                            );
                          },
                        ),
                        SettingButton(
                          title: "Copyright",
                          iconData: Icons.copyright,
                          settings: Settings(audioOn: true),
                          onPressed: () {
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.info,
                              text: "Developer: Hamza Mahrous\nDamascus University\n-Zero Number Game-"
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }),
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