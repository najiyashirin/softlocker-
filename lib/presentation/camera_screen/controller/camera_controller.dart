import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/camera_model.dart';

/// A controller class for the CameraScreen.
///
/// This class manages the state of the CameraScreen, including the
/// current cameraModelObj
class CameraController extends GetxController {
  Rx<CameraModel> cameraModelObj = CameraModel().obs;
}