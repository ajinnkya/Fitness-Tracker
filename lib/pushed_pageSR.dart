import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';
import 'dart:math';

import 'package:yoga_guru/services/camera.dart';
import 'package:yoga_guru/services/render_data.dart';
import 'package:yoga_guru/services/render_data_yoga.dart';
import 'package:yoga_guru/services/render_data_arm_press.dart';
import 'package:yoga_guru/services/render_data_yogaB.dart';
import 'package:yoga_guru/services/render_data_yogaPD.dart';
import 'package:yoga_guru/services/render_data_yogaSR.dart';
import 'package:yoga_guru/services/render_data_yogaT.dart';
import 'package:yoga_guru/services/render_data_yogaV.dart';
import 'package:yoga_guru/services/render_data_yogaW.dart';

class PushedPageSR extends StatefulWidget {
  final List<CameraDescription> cameras;
  final String title;
  const PushedPageSR({this.cameras, this.title});
  @override
  _PushedPageSRState createState() => _PushedPageSRState();
}

class _PushedPageSRState extends State<PushedPageSR> {
  List<dynamic> _data;
  int _imageHeight = 0;
  int _imageWidth = 0;
  int x = 1;

  @override
  void initState() {
    super.initState();
    var res = loadModel();
    print('Model Response: ' + res.toString());
  }

  _setRecognitions(data, imageHeight, imageWidth) {
    if (!mounted) {
      return;
    }
    setState(() {
      _data = data;
      _imageHeight = imageHeight;
      _imageWidth = imageWidth;
    });
  }

  loadModel() async {
    return await Tflite.loadModel(
        model: "assets/models/posenet_mv1_075_float_from_checkpoints.tflite");
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Sarvangasan'),
      ),
      body: Stack(
        children: <Widget>[
          Camera(
            cameras: widget.cameras,
            setRecognitions: _setRecognitions,
          ),
          RenderDataYogaSR(
            data: _data == null ? [] : _data,
            previewH: max(_imageHeight, _imageWidth),
            previewW: min(_imageHeight, _imageWidth),
            screenH: screen.height,
            screenW: screen.width,
          ),
        ],
      ),
    );
  }
}
