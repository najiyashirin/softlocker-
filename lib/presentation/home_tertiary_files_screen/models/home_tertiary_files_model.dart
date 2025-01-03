import "../../../core/app_export.dart";
import 'certificate_list_item_model.dart';

// This class defines the variables used in the home tertiary files screen,
// and is typically used to hold data that is passed between different parts of the application.

// ignore: must_be_immutable
class HomeTertiaryFilesModel {
  Rx<List<CertificateListItemModel>> certificateListItemList = Rx([
    CertificateListItemModel(
        certificate: "msg_certificate_hackathon".tr.obs,
        fileSize: "msg nov_23 2020 336_94".tr.obs),
    CertificateListItemModel(),
    CertificateListItemModel(),
    CertificateListItemModel(),
    CertificateListItemModel(),
  ]);
}
