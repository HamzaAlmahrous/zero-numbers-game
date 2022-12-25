import '../../../../core/cache/cache_helper.dart';
import '../../domain/entities/onboard_response.dart';

abstract class OnBoardLocalDataSource {
  Future<OnBoard> getOnBoard();

  Future<bool> saveOnBoardFirstTime({required bool firstTime});
}

const cachedOnBoradFirstTime = 'CACHED_ONBOARD_FIRST_TIME';

class OnBoardLocalDataSourceImpl implements OnBoardLocalDataSource {
  
  final CacheHelper cacheHelper;

  OnBoardLocalDataSourceImpl({required this.cacheHelper});

  @override
  Future<OnBoard> getOnBoard() {
    final firstTime = cacheHelper.sharedPreferences.getBool(cachedOnBoradFirstTime);
    if (firstTime != null) {
      return Future.value(OnBoard(firstTime: firstTime));
    } else{
      throw Exception('error loading last onboard');
    }
  }

  @override
  Future<bool> saveOnBoardFirstTime({required bool firstTime}) async {
    return await cacheHelper.saveData(key: cachedOnBoradFirstTime, value: firstTime);
  }

}
