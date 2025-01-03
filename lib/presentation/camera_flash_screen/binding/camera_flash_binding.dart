import '../../../core/app_export.dart';
import '../controller/camera_flash_controller.dart';

/// A binding class for the CameraFlashScreen.
///
/// This class ensures that the CameraFlashController is created when the
/// CameraFlashScreen is first loaded.
class CameraFlashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CameraFlashController());
  }
}
