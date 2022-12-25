import '../../domain/entities/journey_details.dart';

class JourneyDetailsModel extends JourneyDetails{
  
  const JourneyDetailsModel({required int level, required int currentGame}) : super(level: level, currentGame: currentGame);

  factory JourneyDetailsModel.fromJson(Map<String, dynamic> json) {
    return JourneyDetailsModel(
      level: json['level'],
      currentGame: json['currentGame'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'level': level,
      'currentGame': currentGame,
    };
  }

}