import 'package:zero_numbers_game/features/Settings/data/models/settings_model.dart';
import '../../../../core/cache/cache_helper.dart';

abstract class SettingsLocalDataSource {
  Future<SettingsModel> getSettings();

  Future<bool> saveSettings({required bool audioOn});
}

const cachedSettings = 'CACHED_SETTINGS';

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  
  final CacheHelper cacheHelper;

  SettingsLocalDataSourceImpl({required this.cacheHelper});

  @override
  Future<SettingsModel> getSettings() {
    final audioOn = cacheHelper.sharedPreferences.getBool(cachedSettings);
    if (audioOn != null) {
      return Future.value(SettingsModel(audioOn: audioOn));
    } else{
      throw Exception('error loading last Settings');
    }
  }

  @override
  Future<bool> saveSettings({required bool audioOn}) async {
    return await cacheHelper.saveData(key: cachedSettings, value: audioOn);
  }

}
