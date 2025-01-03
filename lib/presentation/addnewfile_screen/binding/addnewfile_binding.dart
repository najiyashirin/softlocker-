
import '../../../core/app_export.dart';
import '../controller/addnewfile_controller.dart';

/// A binding class for the Addnewfile screen.
/// This class ensures that the AddnewfileController is created when the
/// AddnewfileScreen is first loaded.
class AddnewfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddnewfileController());
  }
}
