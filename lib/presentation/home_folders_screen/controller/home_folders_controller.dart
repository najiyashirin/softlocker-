import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_folders_model.dart';

/// A controller class for the HomeFoldersScreen.
///
/// This class manages the state of the HomeFoldersScreen, including the
/// current homeFoldersModelObj.
class HomeFoldersController extends GetxController {
  Rx<HomeFoldersModel> homeFoldersModelObj = HomeFoldersModel().obs;
}
