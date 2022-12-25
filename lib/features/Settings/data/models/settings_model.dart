import '../../domain/entities/settings.dart';

// ignore: must_be_immutable
class SettingsModel extends Settings{
  
  SettingsModel({required bool audioOn}) : super(audioOn: audioOn);

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
      audioOn: json['audioOn'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'audioOn': audioOn,
    };
  }

}