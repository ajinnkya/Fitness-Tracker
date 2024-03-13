import 'package:flutter/material.dart';
import 'package:yoga_guru/widgets/search_bar.dart';
import 'stopwatch.dart';
// import 'mapscreen.dart';
import 'package:yoga_guru/MapView.dart';


class WorkOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50),
                Text(
                  'Workout',
                  style: TextStyle(
                    color: Color(0xFFFE7C7C),
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
                Image.asset('assets/images/running_ (2).png'),
                SizedBox(height: 10),
                SizedBox(
                  child: SearchBar('What do you want to do today? Cardio?'),
                ),
                SizedBox(height: 10),
                SizedBox(
                  //width: screen.width,
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Stack(
                        children: <Widget>[
                          Container(
                            width: screen.width,
                            height: 200,
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              color: Colors.white,
                              child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image.asset('assets/images/cycle.png')
                              ),
                              onPressed: () {
//                            print('hello');
                           Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MapView()));
                              },

                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: screen.width,
                            height: 200,
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              color: Colors.white,
                              child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image.asset('assets/images/sprint.png')
                              ),
                              onPressed: () {
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MapView()));
                              },

                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: screen.width,
                            height: 200,
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              color: Colors.white,
                              child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image.asset('assets/images/Clock.png')
                              ),
                              onPressed: () {
//                            print('hello');
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>stopwatch()));
                              },

                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
