import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/loginpro_model.dart';

// A controller class for the LoginproScreen.
class LoginproController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<LoginproModel> loginproModelobj = LoginproModel().obs;
  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
