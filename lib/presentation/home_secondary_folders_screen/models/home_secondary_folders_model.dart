import '../../../core/app_export.dart';
import 'folderlist_item_model.dart';

// This class defines the variables used in the [home_secondary_folders_screen],
// and is typically used to hold data that is passed between different parts of the application.

// ignore: must_be_immutable
class HomeSecondaryFoldersModel {
  Rx<List<FolderlistItemModel>> folderListItemList = Rx([
    FolderlistItemModel(certificates: "lbl_certificates".tr.obs),
    FolderlistItemModel(certificates: "lbl_receipts".tr.obs),
    FolderlistItemModel(certificates: "lbl_grade_cards".tr.obs),
    FolderlistItemModel(certificates: "lbl_notes".tr.obs),
    FolderlistItemModel(certificates: "lbl_identity_cards".tr.obs)
  ]);
}
