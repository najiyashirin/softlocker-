import "../../../core/app_export.dart";
import '../controller/choose_image_controller.dart';

/// A binding class for the ChooseImageScreen.
///
/// This class ensures that the ChooseImageController is created when the
/// ChooseImageScreen is first loaded.
class ChooseImageBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => ChooseImageController());
  }

}