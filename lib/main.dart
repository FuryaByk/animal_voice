import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlaySound(),
    ),
  );
}

class PlaySound extends StatefulWidget {
  const PlaySound({super.key});

  @override
  State<PlaySound> createState() => _PlaySoundState();
}

class _PlaySoundState extends State<PlaySound> {
  int ses = 7;
  final player = AudioPlayer();
  List<String> ryol = [
    'images/esek.png',
    'images/inek.png',
    'images/kedi.png',
    'images/kopek.png',
    'images/kus.png',
    'images/monkey.png',
  ];
  List<String> syol = [
    'assets/esek.mp3',
    'assets/inek.mp3',
    'assets/kedi.mp3',
    'assets/kopek.mp3',
    'assets/kus.mp3',
    'assets/monkey.mp3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: [
          FilledButton(
              onPressed: () {
                setState(() {
                  ses = Random().nextInt(6);
                  print(ses.toString());
                  player.play(UrlSource(syol[ses]));
                });
              },
              child: Icon(Icons.play_arrow, color: Colors.amber)),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Image.asset(ryol[0]),
                  onTap: () {
                    setState(() {
                      if (ses == 0) {
                        player.play(UrlSource('assets/aferin.m4a'));
                      } else {
                        player.play(UrlSource('assets/uzgunum.m4a'));
                      }
                      //player.play(UrlSource(syol[0]));
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Image.asset(ryol[1]),
                  onTap: () {
                    setState(() {
                      if (ses == 1) {
                        player.play(UrlSource('assets/aferin.m4a'));
                      } else {
                        player.play(UrlSource('assets/uzgunum.m4a'));
                      }
                      //player.play(UrlSource(syol[1]));
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Image.asset(ryol[2]),
                  onTap: () {
                    setState(() {
                      if (ses == 2) {
                        player.play(UrlSource('assets/aferin.m4a'));
                      } else {
                        player.play(UrlSource('assets/uzgunum.m4a'));
                      }
                      //player.play(UrlSource(syol[2]));
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Image.asset(ryol[3]),
                  onTap: () {
                    setState(() {
                      if (ses == 3) {
                        player.play(UrlSource('assets/aferin.m4a'));
                      } else {
                        player.play(UrlSource('assets/uzgunum.m4a'));
                      }
                      //player.play(UrlSource(syol[3]));
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Image.asset(ryol[4]),
                  onTap: () {
                    setState(() {
                      if (ses == 4) {
                        player.play(UrlSource('assets/aferin.m4a'));
                      } else {
                        player.play(UrlSource('assets/uzgunum.m4a'));
                      }
                      //player.play(UrlSource(syol[4]));
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Image.asset(ryol[5]),
                  onTap: () {
                    setState(() {
                      if (ses == 5) {
                        player.play(UrlSource('assets/aferin.m4a'));
                      } else {
                        player.play(UrlSource('assets/uzgunum.m4a'));
                      }
                      //player.play(UrlSource(syol[5]));
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Center(
// child: FilledButton(
// style: ButtonStyle(
// backgroundColor: WidgetStatePropertyAll(Colors.redAccent)),
// onPressed: () {
// player.play(UrlSource('assets/kedi.mp3'));
// },
// child: Icon(
// Icons.headphones,
// size: 60,
// color: Colors.amber,
// )),
// )
