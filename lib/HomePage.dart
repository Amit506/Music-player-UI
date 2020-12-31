import 'package:flutter/material.dart';
import 'package:litapp/NavBar.dart';
import 'package:litapp/PlayControls.dart';
import 'constant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 5.0;



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AlbumArt();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
              'jab tak hai jaan',
              style: TextStyle(
                  fontSize: 17.0,
                  color: darkPrimaryColor,
                  fontWeight: FontWeight.w500),
            ),
          Text(
            'Arijit Singh',
            style: TextStyle(
                fontSize: 17.0,
                color: darkPrimaryColor,
                fontWeight: FontWeight.w400),
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 2,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
            child: Slider(
              value: sliderValue,
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.2),
              min: 0,
              max: 10,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          ),
          PlayControls(),
        ],
      ),
    );
  }
}

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 260,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset('assets/SPACE_album-mock.jpg', fit: BoxFit.fill),
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor,
            offset: Offset(20, 8),
            spreadRadius: 3,
            blurRadius: 25,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
      ),
    );
  }
}
