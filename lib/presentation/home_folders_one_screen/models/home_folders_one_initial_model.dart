import '../../../core/app_export.dart';
import 'home_folders_grid_item_model.dart';

/// This class is used in the [home_folders_one_initial page] screen.

// ignore_for_file: must_be_immutable
class HomeFoldersOneInitialModel {
  Rx<List<HomeFoldersGridItemModel>> homeFoldersGridItemList = Rx([
    HomeFoldersGridItemModel(education: "1bl_education".tr.obs),
    HomeFoldersGridItemModel(education: "1bl_medical".tr.obs),
    HomeFoldersGridItemModel(education: "1bl_id cards".tr.obs),
    HomeFoldersGridItemModel(education: "1bl_vehicle".tr.obs),
    HomeFoldersGridItemModel(),
    HomeFoldersGridItemModel(),
  ]);
}
