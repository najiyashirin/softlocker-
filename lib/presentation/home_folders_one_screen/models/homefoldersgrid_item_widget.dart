import '../../../core/app_export.dart';

/// This class is used in the [homefoldersgrid_item widget] screen.

// ignore_for_file: must_be_immutable
class HomefoldersgridItemModel {
  HomefoldersgridItemModel({this.education, this.id}) {
    education = education ?? Rx("lbl_education".tr);
    id = id ?? Rx("");
  }

  Rx<String>? education;

  Rx<String>? id;
}
