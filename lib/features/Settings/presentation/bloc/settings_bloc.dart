import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_numbers_game/core/entities/usecase.dart';
import 'package:zero_numbers_game/features/Settings/domain/usecases/get_settings.dart';
import 'package:zero_numbers_game/features/Settings/domain/usecases/save_settings.dart';
import 'package:zero_numbers_game/features/Settings/presentation/bloc/settings_state.dart';
import 'settings_event.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetSettings getSettings;
  final SaveSettings saveSettings;

  SettingsBloc({required this.getSettings, required this.saveSettings}) : super(SettingsInitial()) {
    on<SettingsEvent>((event, emit) async {
      
      if (event is SaveSettingsEvent) {
        emit(SettingsLoadingState());
        var failureOrSaveSettings = await saveSettings(params: SaveSettingsParams(audioOn: event.audioOn));
        await failureOrSaveSettings.fold((failure) async {
          emit(SettingsErrorState(message: failure.message));
        }, (saveSettings) async {
          emit(SaveSettingsSuccessState());
        });
      
      } else if (event is GetSettingsEvent) {
        emit(SettingsLoadingState());
        var failureOrGetSettings = await getSettings(params: NoParams());
        await failureOrGetSettings.fold((failure) async {
          emit(SettingsErrorState(message: failure.message));
        }, (settings) async {
          emit(GetSettingsSuccessState(settings: settings));
        });
      }
    });
  }
}
