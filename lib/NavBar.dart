import 'package:flutter/material.dart';

import 'constant.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(horizontal:15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
        children: [
          NavBarItem(
            icon: Icons.arrow_back_ios,
          ),
          Text('Playing Now',style: TextStyle(
            fontSize: 17.0,
            color: darkPrimaryColor,
            fontWeight: FontWeight.w600,
          ),),
          NavBarItem(
            icon: Icons.list,
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  NavBarItem({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration:navBarDecoration,
         
      child: Icon(
        icon,
        color: darkPrimaryColor,
      ),
    );
  }
}
