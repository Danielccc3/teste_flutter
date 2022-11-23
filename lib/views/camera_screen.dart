import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class CameraScreen extends StatefulWidget {
  @override 
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? controller;
  bool _isCameraInitialized = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}