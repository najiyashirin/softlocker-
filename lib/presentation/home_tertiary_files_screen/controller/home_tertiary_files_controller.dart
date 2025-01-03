import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/home_tertiary_files_model.dart';

/// A controller class for the HomeTertiaryFilesScreen.
///
/// This class manages the state of the HomeTertiaryFilesScreen, including the
/// current homeTertiaryFilesModelObj
class HomeTertiaryFilesController extends GetxController {
  Rx<HomeTertiaryFilesModel> homeTertiaryFilesModelObj = HomeTertiaryFilesModel().obs;
}
