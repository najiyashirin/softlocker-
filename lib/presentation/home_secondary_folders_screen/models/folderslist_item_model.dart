import '../../../core/app_export.dart';

/// This class is used in the [folderlist_item widget] screen.

// ignore_for_file: must_be_immutable
class FolderlistItemModel {
  FolderlistItemModel({this.certificates, this.id}) {
    certificates = certificates ?? Rx("1bl certificates".tr);
    id = id ?? Rx("");
  }

  Rx<String>? certificates;

  Rx<String>? id;
}
