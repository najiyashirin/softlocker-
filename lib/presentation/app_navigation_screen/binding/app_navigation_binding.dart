import '../../../core/app_export.dart';
import '../controller/app_navigation_controller.dart';

/// A binding class for the AppNavigationScreen.
class AppNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigationController());
  }
}