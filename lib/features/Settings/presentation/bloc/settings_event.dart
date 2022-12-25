import 'package:equatable/equatable.dart';

abstract class SettingsEvent extends Equatable {
  @override
  List<Object> get props => [];
}



class SaveSettingsEvent extends SettingsEvent {
  final bool audioOn;

  SaveSettingsEvent({required this.audioOn});

  @override
  List<Object> get props => [audioOn];
}


class GetSettingsEvent extends SettingsEvent {

  GetSettingsEvent();

  @override
  List<Object> get props => [];
}