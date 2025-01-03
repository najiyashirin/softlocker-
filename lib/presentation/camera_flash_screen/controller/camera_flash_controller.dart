import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/camera_flash_model.dart';

/// A controller class for the CameraFlashscreen.
/// This class manages the state of the CameraFlashscreen, including the
/// current cameraFlashModel object.
class CameraFlashController extends GetxController {
  Rx<CameraFlashModel> cameraFlashModelobj = CameraFlashModel().obs;
}

