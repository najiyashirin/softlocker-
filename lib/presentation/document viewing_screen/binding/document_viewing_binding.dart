import '../../../core/app_export.dart';
import '../controller/document_viewing_controller.dart';

/// A binding class for the DocumentViewingScreen.
///
/// This class ensures that the DocumentViewingController is created when the
/// DocumentViewingScreen is first loaded.
class DocumentViewingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DocumentViewingController());
  }
}