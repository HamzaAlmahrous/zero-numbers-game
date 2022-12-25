import 'package:audioplayers/audioplayers.dart';

class Player {
  final AudioPlayer audioPlayer;

  Player({required this.audioPlayer});

  void playAssetSound(String source){
    audioPlayer.play(AssetSource(source));
  }
}
