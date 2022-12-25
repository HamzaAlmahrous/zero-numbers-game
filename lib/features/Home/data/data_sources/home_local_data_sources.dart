import '../../../../core/cache/cache_helper.dart';

abstract class HomeLocalDataSource {
  // Future<Home> getHome();

  // Future<bool> saveHomeFirstTime({required bool firstTime});
}

const cachedOnBoradFirstTime = 'CACHED_HOME_FIRST_TIME';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  
  final CacheHelper cacheHelper;

  HomeLocalDataSourceImpl({required this.cacheHelper});

  // @override
  // Future<Home> getHome() {
  //   final firstTime = cacheHelper.sharedPreferences.getBool(cachedOnBoradFirstTime);
  //   if (firstTime != null) {
  //     return Future.value(Home(firstTime: firstTime));
  //   } else{
  //     throw Exception('error loading last Home');
  //   }
  // }

  // @override
  // Future<bool> saveHomeFirstTime({required bool firstTime}) async {
  //   return await cacheHelper.saveData(key: cachedOnBoradFirstTime, value: firstTime);
  // }

}
