import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../controller/home_tertiary_files_controller.dart';
import '../models/certificatelist_item_model.dart';

// ignore_for_file: must_be_immutable
class CertificatelistItemWidget extends StatelessWidget {
  CertificatelistItemWidget(this.certificatelistItemModelObj, {Key? key}) : super(key: key);

  final CertificatelistItemModel certificatelistItemModelObj;
  final HomeTertiaryFilesController controller = Get.find<HomeTertiaryFilesController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSettingsLightBlueSeo,
          height: 42.0,
          width: 38.0,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 2.0),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                    () => Text(
                  certificatelistItemModelObj.certificateValue.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 4.0),
              Obx(
                    () => Text(
                  certificatelistItemModelObj.certificateIntent.value,
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ),
              const SizedBox(height: 4.0),
              CustomImageView(
                imagePath: ImageConstant.imgGroups746,
                height: 14.0,
                width: 5.0,
                margin: const EdgeInsets.only(bottom: 10.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
