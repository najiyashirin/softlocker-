import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/home_folders_one_initial_model.dart';
import '../models/home_folders_one_model.dart';

/// A controller class for the HomeFoldersOneScreen.
///
/// This class manages the state of the HomeFoldersOneScreen, including the
/// current homeFoldersOneModelObj

class HomeFoldersOneController extends GetxController {
  Rx<HomeFoldersOneModel> homeFoldersOneModelObj = HomeFoldersOneModel().obs;

  Rx<HomeFoldersOneInitialModel> homeFoldersOneInitialModelObj = HomeFoldersOneInitialModel().obs;
}
