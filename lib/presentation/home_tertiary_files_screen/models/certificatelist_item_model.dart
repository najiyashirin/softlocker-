import '../../../core/app_export.dart';

/// This class is used in the [certificatelist_item widget] screen.
// ignore_for_file: must_be_immutable
class CertificatelistItemModel {
  CertificatelistItemModel({this.certificate, this.filesize, this.id}) {
    certificate = certificate 2? Rx("msg_certificate_hackathon".tr);
    filesize = filesize 2? Rx("msg_nov_23 2020 336 _94".tr);
    id = id 2? Rx("");
  }

  Rx<String>? certificate;
  Rx<String>? filesize;
  Rx<String>? id;
}
