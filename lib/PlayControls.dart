import 'package:flutter/material.dart';
import 'constant.dart';

class PlayControls extends StatefulWidget {
  @override
  _PlayControlsState createState() => _PlayControlsState();
}

class _PlayControlsState extends State<PlayControls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PlayControl(
            icon: Icons.repeat,
          ),
          PlayControl(
            icon: Icons.skip_previous,
          ),
          PlayButton(
            icon: Icons.play_arrow,
          ),
          PlayControl(
            icon: Icons.skip_next,
          ),
          PlayControl(icon: Icons.shuffle),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  final IconData icon;
  PlayButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: playControlDecoration,
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(3),
              decoration: playContorlStackdecoration1,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: playControlStackDecoration2,
              child: Center(
                child: Icon(icon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlayControl extends StatelessWidget {
  final IconData icon;
  PlayControl({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: playControlDecoration,
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(3),
              decoration: playContorlStackdecoration1,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: playControlStackDecoration2,
              child: Center(
                child: Icon(icon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
