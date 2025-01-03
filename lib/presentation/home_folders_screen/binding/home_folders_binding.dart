import '../../../core/app_export.dart';
import '../controller/home_folders_controller.dart';

/// A binding class for the HomeFoldersScreen.
/// This class ensures that the HomeFoldersController is created when the
/// HomeFoldersScreen is first loaded.
class HomeFoldersBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => HomeFoldersController());
  }
}
