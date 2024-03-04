import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Expanded plate({required Color color, required int sn}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () {
          final assetsAudioPlayer = AssetsAudioPlayer();
          assetsAudioPlayer.open(
            Audio('assets/note$sn.wav'),
          );
        },
        child: const Text('first One'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Xylophone'),
          backgroundColor: Colors.lightBlue,
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            plate(color: Colors.red, sn: 1),
            plate(color: Colors.orange, sn: 2),
            plate(color: Colors.yellow, sn: 3),
            plate(color: Colors.green, sn: 4),
            plate(color: Colors.greenAccent, sn: 5),
            plate(color: Colors.blue, sn: 6),
            plate(color: Colors.purple, sn: 7),
          ]),
        ),
      ),
    );
  }
}
