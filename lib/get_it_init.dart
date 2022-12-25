import 'package:audioplayers/audioplayers.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zero_numbers_game/core/audio/audio_player.dart';
import 'package:zero_numbers_game/core/cache/cache_helper.dart';
import 'package:zero_numbers_game/features/Journey/data/data_sources/journey_local_data_sources.dart';
import 'package:zero_numbers_game/features/Journey/data/repositories/journey_repo_impl.dart';
import 'package:zero_numbers_game/features/Journey/domain/repositories/journey_repo.dart';
import 'package:zero_numbers_game/features/Journey/domain/usecases/get_journey.dart';
import 'package:zero_numbers_game/features/Journey/domain/usecases/save_journey.dart';
import 'package:zero_numbers_game/features/Journey/presentation/bloc/journey_bloc.dart';
import 'package:zero_numbers_game/features/OnBoarding/presentation/bloc/onboard_bloc.dart';
import 'package:zero_numbers_game/features/Settings/data/repositories/settings_repo_impl.dart';
import 'package:zero_numbers_game/features/Settings/domain/repositories/settings_repo.dart';
import 'package:zero_numbers_game/features/Settings/domain/usecases/get_settings.dart';
import 'package:zero_numbers_game/features/Settings/domain/usecases/save_settings.dart';
import 'package:zero_numbers_game/features/Settings/presentation/bloc/settings_bloc.dart';

import 'features/Home/presentation/bloc/home_bloc.dart';
import 'features/OnBoarding/data/data_sources/onboard_local_data_source.dart';
import 'features/OnBoarding/data/repositories/onboard_repository_impl.dart';
import 'features/OnBoarding/domain/repositories/onboard_repo.dart';
import 'features/OnBoarding/domain/usecases/get_onboard_info.dart';
import 'features/OnBoarding/domain/usecases/save_onboard_first_time.dart';
import 'features/Settings/data/data_sources/settings_local_data_sources.dart';

final getIt = GetIt.instance;

Future<void> init() async {

  //---------------------------------------- blocs
  getIt.registerFactory(() => OnBoardBloc(saveOnBoardFirstTime: getIt(), getOnBoardInfo: getIt()));
  getIt.registerFactory(() => JourneyBloc(getJourneyDetailsInfo: getIt(), saveJourneyDetails: getIt()));
  getIt.registerFactory(() => SettingsBloc(getSettings: getIt(), saveSettings: getIt()));
  getIt.registerFactory(() => HomeBloc());

  //---------------------------------------- usecase
  getIt.registerLazySingleton(() => SaveSettings(repository: getIt()));
  getIt.registerLazySingleton(() => GetSettings(repository: getIt()));
  getIt.registerLazySingleton(() => GetOnBoardInfo(repository: getIt()));
  getIt.registerLazySingleton(() => SaveOnBoardFirstTime(repository: getIt()));
  getIt.registerLazySingleton(() => GetJourneyDetailsInfo(repository: getIt()));
  getIt.registerLazySingleton(() => SaveJourneyDetails(repository: getIt()));

  //---------------------------------------- repositories
  getIt.registerLazySingleton<OnBoardRepository>( ()=> OnBoardRepositoryImpl(localDataSource: getIt()));
  getIt.registerLazySingleton<JourneyRepository>( ()=> JourneyRepositoryImpl(localDataSource: getIt()));
  getIt.registerLazySingleton<SettingsRepository>( ()=> SettingsRepositoryImpl(localDataSource: getIt()));

  //---------------------------------------- data sources
  // getIt.registerLazySingleton<NotificationsRemoteDataSource>( ()=> NotificationsRemoteDataSource(httpClient: getIt()));
  getIt.registerLazySingleton<OnBoardLocalDataSource>( ()=> OnBoardLocalDataSourceImpl(cacheHelper: getIt()));
  getIt.registerLazySingleton<JourneyLocalDataSource>( ()=> JourneyLocalDataSourceImpl(cacheHelper: getIt()));
  getIt.registerLazySingleton<SettingsLocalDataSource>( ()=> SettingsLocalDataSourceImpl(cacheHelper: getIt()));

  // --------------------------------------- core
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  AudioPlayer audioPlayer = AudioPlayer();
  getIt.registerLazySingleton<SharedPreferences>( ()=> sharedPreferences);
  getIt.registerLazySingleton<AudioPlayer>( ()=> audioPlayer);
  getIt.registerLazySingleton<CacheHelper>( ()=> CacheHelper(sharedPreferences: getIt()));
  getIt.registerLazySingleton<Player>( ()=> Player(audioPlayer: getIt()));

}