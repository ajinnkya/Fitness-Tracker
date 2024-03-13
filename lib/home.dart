import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:yoga_guru/pushed_pageA.dart';
import 'package:yoga_guru/pushed_pageB.dart';
import 'package:yoga_guru/pushed_pageP.dart';
import 'package:yoga_guru/pushed_pagePD.dart';
import 'package:yoga_guru/pushed_pageS.dart';
import 'package:yoga_guru/pushed_pageSH.dart';
import 'package:yoga_guru/pushed_pageSR.dart';
import 'package:yoga_guru/pushed_pageT.dart';
import 'package:yoga_guru/pushed_pageV.dart';
import 'package:yoga_guru/pushed_pageY.dart';
import 'package:yoga_guru/pushed_pageW.dart';
import 'package:yoga_guru/widgets/search_bar.dart';
import 'PushedPagePU.dart';
import 'PushedPageSQ.dart';
import 'PushedPagepl.dart';
import 'main.dart';

class Home extends StatelessWidget {
  final List<CameraDescription> cameras;

  static const String id = 'Home';
  Home(this.cameras);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Align.AI'),
      //   backgroundColor: Colors.blueAccent,
      // ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Fitness Tracker',
                style: TextStyle(
                  color: Color(0xFFFE7C7C),
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Stay Healthy, Stay Safe',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/main_poster.png'),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: SizedBox(
                child: SearchBar('What pose do you wish to align?'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Strength Alignment',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              //Strength Align
              child: SizedBox(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/PullUps.png')),
                            onPressed: () => onSelectPU(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/arm_press.PNG')),
                            onPressed: () => onSelectA(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/push_up.PNG')),
                            onPressed: () => onSelectP(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset('assets/images/squat.PNG')),
                            onPressed: () => onSelectS(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset('assets/images/plank.PNG')),
                            onPressed: () => onSelectpl(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/lunge_squat.PNG')),
                            onPressed: () => onSelectsq(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Yoga Alignment',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              child: SizedBox(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/trikonasan.png')),
                            onPressed: () => onSelectY(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/virbhadrasan.png')),
                            onPressed: () => onSelectW(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //virbhadrasan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/tadasan.png')),
                            onPressed: () => onSelectT(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //tadasan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/vrikshsan.png')),
                            onPressed: () => onSelectV(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //Vrikshsan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/bhujangasan.png')),
                            onPressed: () => onSelectB(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //Bhujangasan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/padhastasan.png')),
                            onPressed: () => onSelectPD(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //padhastasan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/sarvangasan.png')),
                            onPressed: () => onSelectSR(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //sarvangasan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/shirsasan.png')),
                            onPressed: () => onSelectSH(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //Shirsasan
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Strength Booster',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              child: SizedBox(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/push_up.PNG')),
                            onPressed: () => onSelectP(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset('assets/images/squat.PNG')),
                            onPressed: () => onSelectS(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset('assets/images/plank.PNG')),
                            onPressed: () => onSelectpl(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/trikonasan.png')),
                            onPressed: () => onSelectY(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/virbhadrasan.png')),
                            onPressed: () => onSelectW(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //virbhadrasan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/padhastasan.png')),
                            onPressed: () => onSelectPD(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //padhastasan
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Belly Fat Reducer',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              child: SizedBox(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/push_up.PNG')),
                            onPressed: () => onSelectP(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset('assets/images/plank.PNG')),
                            onPressed: () => onSelectpl(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/bhujangasan.png')),
                            onPressed: () => onSelectB(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //Bhujangasan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/tadasan.png')),
                            onPressed: () => onSelectT(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //tadasan
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Weight Loss Exercise',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              child: SizedBox(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/PullUps.png')),
                            onPressed: () => onSelectPU(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child:
                                    Image.asset('assets/images/arm_press.PNG')),
                            onPressed: () => onSelectA(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset('assets/images/plank.PNG')),
                            onPressed: () => onSelectpl(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/sarvangasan.png')),
                            onPressed: () => onSelectSR(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //sarvangasan
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/trikonasan.png')),
                            onPressed: () => onSelectY(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/virbhadrasan.png')),
                            onPressed: () => onSelectW(
                                context: context, modelName: 'posenet'),
                          ),
                        ),
                      ],
                    ), //virbhadrasan
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}

void onSelectA({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageA(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectPU({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPagePU(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectS({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageS(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectsq({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageSQ(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectpl({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPagepl(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectP({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageP(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectY({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageY(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectW({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageW(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectT({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageT(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectV({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageV(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectB({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageB(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectPD({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPagePD(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectSR({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageSR(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectSH({BuildContext context, String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageSH(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}
// class CircleProfileImage extends StatefulWidget {
//   final User user;
//   const CircleProfileImage({this.user});
//
//   @override
//   _CircleProfileImageState createState() => _CircleProfileImageState(user);
// }
//
// class _CircleProfileImageState extends State<CircleProfileImage> {
//   final User user;
//
//   _CircleProfileImageState(this.user);
//   @override
//   Widget build(BuildContext context) {
//     return Hero(
//       tag: 'profile',
//       child: Center(
//         child: CircleAvatar(
//           radius: 15,
//           backgroundImage: user.photoUrl.isEmpty
//               ? AssetImage(
//                   'assets/images/profile-image.png',
//                 )
//               : NetworkImage(user.photoUrl),
//         ),
//       ),
//     );
//   }
// }
