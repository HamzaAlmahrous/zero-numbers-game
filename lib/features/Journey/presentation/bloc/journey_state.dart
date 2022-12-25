import 'package:equatable/equatable.dart';
import 'package:zero_numbers_game/features/Journey/domain/entities/journey_details.dart';

abstract class JourneyState extends Equatable {
  const JourneyState();
  
  @override
  List<Object> get props => [];
}

class JourneyInitial extends JourneyState {}

class JourneyLoadingState extends JourneyState {}

class SaveJourneyDetailsSuccessState extends JourneyState {}

class GetJourneyDetailsSuccessState extends JourneyState {

  final JourneyDetails journeyDetails;
  const GetJourneyDetailsSuccessState({required this.journeyDetails});
  
  @override
  List<Object> get props => [journeyDetails];
}

class JourneyErrorState extends JourneyState {
  
  final String message;
  const JourneyErrorState({required this.message});
  
  @override
  List<Object> get props => [message];
}
