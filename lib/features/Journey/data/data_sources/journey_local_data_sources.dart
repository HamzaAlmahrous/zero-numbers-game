import 'dart:convert';
import 'package:zero_numbers_game/features/Journey/data/models/journey_details_model.dart';
import '../../../../core/cache/cache_helper.dart';

abstract class JourneyLocalDataSource {
  Future<JourneyDetailsModel> getJourney();

  Future<bool> saveJourneyDetails({required JourneyDetailsModel journeyDetails});
}

const cachedJourneyDetails = 'CACHED_JOURNEY_DETAILS';

class JourneyLocalDataSourceImpl implements JourneyLocalDataSource {
  
  final CacheHelper cacheHelper;

  JourneyLocalDataSourceImpl({required this.cacheHelper});

  @override
  Future<JourneyDetailsModel> getJourney() {
    final data = cacheHelper.sharedPreferences.getString(cachedJourneyDetails);
    if (data != null) {
      return Future.value(JourneyDetailsModel.fromJson(json.decode(data)));
    } else{
      throw Exception('error when loading last Journey');
    }
  }

  @override
  Future<bool> saveJourneyDetails({required JourneyDetailsModel journeyDetails}) async {
    return await cacheHelper.saveData(key: cachedJourneyDetails, value: json.encode(journeyDetails.toJson()));
  }

}
