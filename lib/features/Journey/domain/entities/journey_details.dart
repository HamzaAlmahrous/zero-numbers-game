import 'package:equatable/equatable.dart';

class JourneyDetails extends Equatable{
  final int level;
  final int currentGame;

  const JourneyDetails({required this.level, required this.currentGame});
  
  @override
  List<Object?> get props => [level, currentGame];
}
