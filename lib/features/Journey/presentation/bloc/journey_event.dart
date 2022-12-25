import 'package:equatable/equatable.dart';
import 'package:zero_numbers_game/features/Journey/domain/entities/journey_details.dart';

abstract class JourneyEvent extends Equatable {
  @override
  List<Object> get props => [];
}



class SaveJourneyDetailsEvent extends JourneyEvent {
  final JourneyDetails journeyDetails;

  SaveJourneyDetailsEvent({required this.journeyDetails});

  @override
  List<Object> get props => [journeyDetails];
}

class GetJourneyDetailsEvent extends JourneyEvent {

  GetJourneyDetailsEvent();

  @override
  List<Object> get props => [];
}

