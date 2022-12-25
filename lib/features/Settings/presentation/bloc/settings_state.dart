import 'package:equatable/equatable.dart';

import '../../domain/entities/settings.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();
  
  @override
  List<Object> get props => [];
}

class SettingsInitial extends SettingsState {}

class SettingsLoadingState extends SettingsState {}

class SaveSettingsSuccessState extends SettingsState {}

class GetSettingsSuccessState extends SettingsState {

  final Settings settings;
  const GetSettingsSuccessState({required this.settings});
  
  @override
  List<Object> get props => [settings];
}

class SettingsErrorState extends SettingsState {
  
  final String message;
  const SettingsErrorState({required this.message});
  
  @override
  List<Object> get props => [message];
}
