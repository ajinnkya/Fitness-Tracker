import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yoga_guru/home.dart';

// import 'package:yoga_guru/util/user.dart';
import 'package:yoga_guru/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:camera/camera.dart';

import 'home.dart';
import 'home_screen.dart';

List<CameraDescription> cameras;

//Future<void> main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//  SharedPreferences prefs = await SharedPreferences.getInstance();
//
//  String email = prefs.getString('email');
//  String uid = prefs.getString('uid');
//  String displayName = prefs.getString('displayName');
//  String photoUrl = prefs.getString('photoUrl');
//
//  User user = User();
//  user.setUser({
//    'email': email,
//    'displayName': displayName,
//    'uid': uid,
//    'photoUrl': photoUrl,
//  });
//
//  try {
//    cameras = await availableCameras();
//  } on CameraException catch (e) {
//    print('Error: $e.code\nError Message: $e.message');
//  }
//
//  runApp(
//    email != null && uid != null
//        ? MyApp(
//            email: user.email,
//            uid: user.uid,
//            displayName: user.displayName,
//            photoUrl: user.photoUrl,
//            cameras: cameras,
//          )
//        : MyApp(
//            cameras: cameras,
//          ),
//  );
//}
Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  final String email;
//  final String uid;
//  final String displayName;
//  final String photoUrl;
//  final List<CameraDescription> cameras;
//
//  const MyApp({
//    this.email,
//    this.uid,
//    this.displayName,
//    this.photoUrl,
//    this.cameras,
//  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(cameras),
      //home: MainScreen(cameras),
      title: 'Fitness',
      routes: {
        Home.id: (context) => Home(cameras),
        //DemoScreen.id: (context) => DemoScreen(),
      },
    );
  }
}
