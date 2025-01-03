import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/choose_image_model.dart';

/// A controller class for the ChooseImageScreen.
///
/// This class manages the state of the ChooseImageScreen, including the
/// current chooseImageModelObj.
class ChooseImageController extends GetxController {
  Rx<ChooseImageModel> chooseImageModelObj = ChooseImageModel().obs;

}
