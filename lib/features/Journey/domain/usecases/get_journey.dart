import 'package:dartz/dartz.dart';
import '../../../../core/entities/failure.dart';
import '../../../../core/entities/usecase.dart';
import '../entities/journey_details.dart';
import '../repositories/journey_repo.dart';

class GetJourneyDetailsInfo extends UseCase<JourneyDetails, NoParams>{
  final JourneyRepository repository;

  GetJourneyDetailsInfo({required this.repository});

  @override
  Future<Either<Failure, JourneyDetails>> call({required NoParams params}) async {
    return await repository.getJourney();
  }

}
