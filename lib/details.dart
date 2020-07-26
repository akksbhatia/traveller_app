import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),onPressed:(){},),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("My Travel",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: <Widget>[
                Text("Travels in the last month",
                style: TextStyle(
                  color: Colors.grey[700],
                ),),
                Spacer(),
                Text("View All",
                  style: TextStyle(
                    color: Color(0xFF2D9BAC),
                  ),),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 150,
                      child: Image.asset("assets/images/mountain.jpg"),
                    ),
                    Text("Karersee"),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
