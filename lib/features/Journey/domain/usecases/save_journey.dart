import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:zero_numbers_game/features/Journey/domain/entities/journey_details.dart';
import '../../../../core/entities/failure.dart';
import '../../../../core/entities/usecase.dart';
import '../repositories/journey_repo.dart';

class SaveJourneyDetails extends UseCase<bool, SaveJourneyDetailsParams>{
  final JourneyRepository repository;

  SaveJourneyDetails({required this.repository});

  @override
  Future<Either<Failure, bool>> call({required SaveJourneyDetailsParams params}) async {
    return await repository.saveJourneyDetails(journeyDetails: params.journeyDetails);
  }

}

class SaveJourneyDetailsParams extends Equatable {
  final JourneyDetails journeyDetails;

  const SaveJourneyDetailsParams({required this.journeyDetails});

  @override
  List<Object> get props => [journeyDetails];
}