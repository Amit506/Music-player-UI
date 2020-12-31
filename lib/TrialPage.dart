import 'package:flutter/material.dart';



class TrialPage extends StatefulWidget {
  @override
  _TrialPageState createState() => _TrialPageState();
}

class _TrialPageState extends State<TrialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Center(
  child: Column(
    children: [
      FlatButton(onPressed: null, child: Text('play')),
      FlatButton(onPressed: null, child: Text('pause')),
      FlatButton(onPressed: null, child: Text('stop')),
    
    
    ],
  ),
),      
    );
  }
}