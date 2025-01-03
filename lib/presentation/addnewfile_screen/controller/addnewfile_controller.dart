import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/add_new_file_model.dart';

/// A controller class for the AddnewfileScreen.
///
/// This class manages the state of the AddnewfileScreen, including the
/// current addnewfileModelObj
class AddnewfileController extends GetxController {
  Rx<AddnewfileModel> addnewfileModelObj = AddnewfileModel().obs;
}
