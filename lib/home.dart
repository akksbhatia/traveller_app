import 'package:flutter/material.dart';
import 'details.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: screensize.height,
            child: Container(
              height: screensize.height,
              width: screensize.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/bg.jpg"),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "The ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "best travel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF71BAC1),
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("in the world",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text("live without limits the world is made to\nexplore and appreciate its beauty",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    ExploreButton(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class ExploreButton extends StatefulWidget {
  @override
  _ExploreButtonState createState() => _ExploreButtonState();
}

class _ExploreButtonState extends State<ExploreButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),);
        });
      },
      child: Container(
        height: 40,
        width: 270,
        decoration: BoxDecoration(
            color: Color(0xFF2D9BAC).withOpacity(0.90),
            borderRadius: BorderRadius.all(Radius.circular(8),)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text("Explore Now",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
        ),
      ),
    );
  }
}

