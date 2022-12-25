import 'package:dartz/dartz.dart';
import 'package:zero_numbers_game/features/Journey/domain/entities/journey_details.dart';
import '../../../../core/entities/failure.dart';

abstract class JourneyRepository {
  Future<Either<Failure, JourneyDetails>> getJourney();

  Future<Either<Failure, bool>> saveJourneyDetails({required JourneyDetails journeyDetails});
}
