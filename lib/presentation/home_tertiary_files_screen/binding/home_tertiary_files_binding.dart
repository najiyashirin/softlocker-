import '../../../core/app_export.dart';
import '../controller/home_tertiary_files_controller.dart';

/// A binding class for the HomeTertiaryFilesScreen.
///
/// This class ensures that the HomeTertiaryFilesController is created when the
/// HomeTertiaryFilesScreen is first loaded.
class HomeTertiaryFilesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeTertiaryFilesController());
  }
}
