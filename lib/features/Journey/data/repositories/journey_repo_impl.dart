import 'package:dartz/dartz.dart';
import 'package:zero_numbers_game/features/Journey/data/models/journey_details_model.dart';

import '../../../../core/entities/failure.dart';
import '../../domain/entities/journey_details.dart';
import '../../domain/repositories/journey_repo.dart';
import '../data_sources/journey_local_data_sources.dart';

class JourneyRepositoryImpl extends JourneyRepository {
  final JourneyLocalDataSource localDataSource;

  JourneyRepositoryImpl({required this.localDataSource});

    @override
  Future<Either<Failure, JourneyDetailsModel>> getJourney() async {
    try {
      JourneyDetailsModel journeyDetailsModel = await localDataSource.getJourney();
      return Right(journeyDetailsModel);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> saveJourneyDetails({required JourneyDetails journeyDetails}) async{
    try {
      JourneyDetailsModel j = JourneyDetailsModel(level: journeyDetails.level, currentGame: journeyDetails.currentGame);
      bool done = await localDataSource.saveJourneyDetails(journeyDetails: j);
      return Right(done);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

}
