import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_ml_vision/google_ml_vision.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../controller/registration_controller.dart';

class CaptureImageScreen extends StatefulWidget {
  const CaptureImageScreen({Key? key}) : super(key: key);

  @override
  _CaptureImageScreenState createState() => _CaptureImageScreenState();
}

class _CaptureImageScreenState extends State<CaptureImageScreen> {
  final controller = Get.find<RegistrationController>();
  File? _image;
  final ImagePicker _picker = ImagePicker();

  bool _isLoading = false;

  void _openCamera(BuildContext context) async {
    _isLoading = true;
    final pickedFile = (await _picker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.front,
        imageQuality: 50,
        maxHeight: 500.0,
        maxWidth: 500.0));

    detectFaces(File(pickedFile!.path));

    /*setState(() {
      controller.captureImagePath.value = pickedFile.path;
    });*/

    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'image_follow'.tr,
          textAlign: TextAlign.center,
          style: GTheme.title.copyWith(color: errorColor),
        ),
        const SizedBox(height: 10),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: primaryColor)),
          child: _image == null
              ? const Icon(Icons.camera_alt)
              : _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Semantics(
                      label: 'online_gd_reg_picture',
                      child: Image.file(File(_image!.path))),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
                color: errorColor,
                textColor: blackColor,
                child: Text('cancel'.tr),
                onPressed: () {
                  if (_image != null) {
                    setState(() {
                      _image = null;
                      controller.captureImagePath.value = '';
                    });
                  }
                }),
            const SizedBox(width: 8),
            MaterialButton(
                color: secondaryColor,
                textColor: blackColor,
                child: Text('photo_capture'.tr),
                onPressed: () {
                  _openCamera(context);
                }),
          ],
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('face_inside_frame'.tr,
              textAlign: TextAlign.start, style: GTheme.subtitle),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('enough_light'.tr,
              textAlign: TextAlign.start, style: GTheme.subtitle),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('face_capture'.tr,
              textAlign: TextAlign.start,
              style: GTheme.subtitle),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  void detectFaces(File image) async {
    final GoogleVisionImage visionImage = GoogleVisionImage.fromFile(image);
    final FaceDetector faceDetector = GoogleVision.instance.faceDetector(
        const FaceDetectorOptions(
            mode: FaceDetectorMode.accurate,
            enableLandmarks: true,
            enableClassification: true));
    List<Face> detectedFaces = await faceDetector.processImage(visionImage);
    if (detectedFaces.length > 1) {
      Get.defaultDialog(
          title: 'warning'.tr,
          middleText: 'more_face_warning'.tr,
          textConfirm: 'Ok',
          confirmTextColor: blackColor,
          onConfirm: () {
            Get.back();
          });
    } else if (detectedFaces.length == 1) {
      setState(() {
        _image = image;
        controller.captureImagePath.value = image.path;
      });
    } else {
      Get.defaultDialog(
          title: 'warning'.tr,
          middleText: 'no_face_warning'.tr,
          textConfirm: 'Ok',
          confirmTextColor: blackColor,
          onConfirm: () {
            Get.back();
          });
    }
  }
}
