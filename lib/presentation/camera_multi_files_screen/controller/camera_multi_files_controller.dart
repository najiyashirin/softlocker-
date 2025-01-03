import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/camera_multi_files_model.dart';

class CameraMultiFilesController extends GetxController {
  TextEditingController editTextOneController = TextEditingController();
  RxCameraMultiFilesModel cameraMultiFilesModelObj = CameraMultiFilesModel().obs;

  @override
  void onClose() {
    super.onClose();
    editTextOneController.dispose();
  }
}