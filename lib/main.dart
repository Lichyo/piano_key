import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(DO_RE_MI());
}

class DO_RE_MI extends StatelessWidget {
  const DO_RE_MI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: Column(
            children: [
              ExpandedKeys("do.m4a"),
              ExpandedInterval(),
              ExpandedKeys("re.m4a"),
              ExpandedInterval(),
              ExpandedKeys("mi.m4a"),
              ExpandedInterval(),
              ExpandedKeys("fa.m4a"),
              ExpandedInterval(),
              ExpandedKeys("sol.m4a"),
              ExpandedInterval(),
              ExpandedKeys("la.m4a"),
              ExpandedInterval(),
              ExpandedKeys("si.m4a"),
            ],
        ),
      ),
    );
  }
}


class ExpandedKeys extends StatelessWidget {
  final String filename;
  const ExpandedKeys(this.filename);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final player = AudioPlayer();
        final duration = await player.setUrl(
            "/audio/${filename}");
        print('play ${filename}');
        player.play();
      },
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              height: 80,
            ),

          ),
        ],
      ),
    );
  }
}

class ExpandedInterval extends StatelessWidget {
  const ExpandedInterval({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
                color: Colors.black45,
                height: 8,
              )
          )
        ],
      ),
    );
  }
}
