import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/document_viewing_model.dart';

/// A controller class for the DocumentViewingScreen.
/// This class manages the state of the DocumentViewingScreen, including the
/// current documentViewingModelObj

class DocumentViewingController extends GetxController {
  Rx<DocumentViewingModel> documentViewingModelObj = DocumentViewingModel().obs;
}
