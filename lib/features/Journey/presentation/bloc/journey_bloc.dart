import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_numbers_game/core/entities/usecase.dart';
import 'package:zero_numbers_game/features/Journey/domain/usecases/get_journey.dart';
import 'package:zero_numbers_game/features/Journey/domain/usecases/save_journey.dart';
import 'journey_event.dart';
import 'journey_state.dart';

class JourneyBloc extends Bloc<JourneyEvent, JourneyState> {
  final GetJourneyDetailsInfo getJourneyDetailsInfo;
  final SaveJourneyDetails saveJourneyDetails;

  JourneyBloc({required this.getJourneyDetailsInfo, required this.saveJourneyDetails}) : super(JourneyInitial()) {
    on<JourneyEvent>((event, emit) async {
      if (event is SaveJourneyDetailsEvent) {
        emit(JourneyLoadingState());
        var failureOrSaveJourneyDetails = await saveJourneyDetails(
            params: SaveJourneyDetailsParams(journeyDetails: event.journeyDetails));
        await failureOrSaveJourneyDetails.fold((failure) async {
          emit(JourneyErrorState(message: failure.message));
        }, (saveJourneyDetails) async {
          emit(SaveJourneyDetailsSuccessState());
        });
      } else if (event is GetJourneyDetailsEvent) {
        emit(JourneyLoadingState());
        var failureOrGetJourneyDetails =
            await getJourneyDetailsInfo(params: NoParams());
        await failureOrGetJourneyDetails.fold((failure) async {
          emit(JourneyErrorState(message: failure.message));
        }, (getJourneyDetails) async {
          emit(
              GetJourneyDetailsSuccessState(journeyDetails: getJourneyDetails));
        });
      }
    });
  }
}
