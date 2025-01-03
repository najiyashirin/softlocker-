import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/account_created_model.dart';

/// A controller class for the AccountCreatedScreen.
/// This class manages the state of the AccountCreatedscreen, including the
/// current accountCreatedModel obj.
class AccountCreatedController extends GetxController {
  Rx<AccountCreatedModel> accountCreatedModelobj = AccountCreatedModel().obs;
}
