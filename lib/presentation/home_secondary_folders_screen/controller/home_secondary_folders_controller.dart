import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/home_secondary/folders_model.dart';

/// A controller class for the HomeSecondaryFoldersScreen.
///
/// This class manages the state of the HomeSecondaryFoldersScreen, including the
/// current homeSecondaryFoldersModelObj
class HomeSecondaryFoldersController extends GetxController {
  Rx<HomeSecondaryFoldersModel> homeSecondaryFoldersModelObj = HomeSecondaryFoldersModel().obs;
}
