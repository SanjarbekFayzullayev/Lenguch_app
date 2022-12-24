import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'muduls_data.dart';

class DetalsPages extends StatefulWidget {
  final MudulasData mudulasData;

  const DetalsPages({Key? key, required this.mudulasData}) : super(key: key);

  @override
  State<DetalsPages> createState() => _DetalsPageState();
}

class _DetalsPageState extends State<DetalsPages> {
  FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    spek() async {
      await flutterTts.speak(widget.mudulasData.name);
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "  " + widget.mudulasData.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                    fontSize: 32),
              ),
              InkWell(
                onTap: () {
                  spek();
                },
                child: AvatarGlow(
                  child: Icon(
                    Icons.volume_down,
                    size: 46,
                    color: Colors.grey,
                  ),
                  endRadius: 40,
                  glowColor: Colors.blue,
                  showTwoGlows: true,
                  animate: true,
                  repeat: false,
                ),
              )
            ],
          ),
          Text(
            "   " + widget.mudulasData.hintName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontSize: 18),
          ),
          SizedBox(
            height: 38,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 6),
              child: Text(widget.mudulasData.about,
                  style: TextStyle(fontSize: 18))),
        ],
      ),
    );
  }
}
