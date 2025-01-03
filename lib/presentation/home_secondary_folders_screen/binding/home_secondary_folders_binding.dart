import '../../../core/app_export.dart';
import '../controller/home_secondary_folders_controller.dart';

/// A binding class for the HomeSecondaryFoldersScreen.
///
/// This class ensures that the HomeSecondaryFoldersController is created when the
/// HomeSecondaryFoldersScreen is first loaded.
class HomeSecondaryFoldersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSecondaryFoldersController());
  }
}
