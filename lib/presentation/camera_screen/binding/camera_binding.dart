import '../../../core/app_export.dart';
import '../controller/camera_controller.dart';

/// A binding class for the CameraScreen.
/// This class ensures that the CameraController is created when the
/// CameraScreen is first loaded.
class CameraBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => CameraController());
  }
}