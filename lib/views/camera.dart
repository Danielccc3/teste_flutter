import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'menu_view.dart';
import '../main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
}

class CameraView extends StatefulWidget {
  const CameraView({Key? key, required this.title}) : super(key: key);
  static const routeName = '/camera';
  final String title;
  @override
  // ignore: library_private_types_in_public_api
  _CameraViewState createState() => _CameraViewState();
}
class _CameraViewState extends State<CameraView> {
  CameraController? controller;
  String imagePath = "";
  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras![1] , ResolutionPreset.max);
    controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    if (!controller!.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Câmera'),
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                Menu.routeName,
              );
            },
          ),
        ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: AspectRatio(
                  aspectRatio: controller!.value.aspectRatio,
                  child: CameraPreview(controller!),
                ),
              ),
              TextButton(
                  onPressed: () async {
                    try {
                      final image = await controller!.takePicture();
                      setState(() {
                        imagePath = image.path;
                      });
                    } catch (e) {
                      // ignore: avoid_print
                      print(e);
                    }
                  },
                  child: const Text("Take Photo")),
              if (imagePath != "")
                SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.file(
                      File(imagePath),
                    ))
            ],
          ),
        ),
      ),
    );
  }
}