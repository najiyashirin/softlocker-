import '../../../core/app_export.dart';
import '../controller/loginpro_controller.dart';

/// A binding class for the LoginproScreen.
/// This class ensures that the LoginproController is created when the
/// LoginproScreen is first loaded.
class LoginproBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => LoginproController());
  }
}
