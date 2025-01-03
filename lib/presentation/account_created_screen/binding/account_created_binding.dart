import '../../../core/app_export.dart';
import '../controller/account_created_controller.dart';

/// A binding class for the AccountCreatedScreen.
///
/// This class ensures that the AccountCreatedController is created when the
/// AccountCreatedScreen is first loaded.
class AccountCreatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountCreatedController());
  }
}
