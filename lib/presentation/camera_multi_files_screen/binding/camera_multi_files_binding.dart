import '../../../core/app_export.dart';
import '../controller/camera_multi_files_controller.dart';

/// A binding class for the CameraMultiFilesScreen.
/// This class ensures that the CameraMultiFilesController is created when the
/// CameraMultiFilesScreen is first loaded.
class CameraMultiFilesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CameraMultiFilesController());
  }
}