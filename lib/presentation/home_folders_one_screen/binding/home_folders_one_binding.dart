import '../../../core/app_export.dart';
import '../controller/home_folders_one_controller.dart';

/// A binding class for the HomeFoldersOneScreen.
///
/// This class ensures that the HomeFoldersOneController is created when the
/// HomeFoldersOneScreen is first loaded.
class HomeFoldersOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeFoldersOneController());
  }
}

