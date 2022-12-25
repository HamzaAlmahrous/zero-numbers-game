import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Settings extends Equatable{
  bool audioOn;

  Settings({required this.audioOn});
  
  @override
  List<Object?> get props => [audioOn];
}
