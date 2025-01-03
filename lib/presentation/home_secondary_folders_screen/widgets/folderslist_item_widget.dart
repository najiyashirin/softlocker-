import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../controller/home_secondary_folders_controller.dart';
import '../models/folderlist_item_model.dart';

// ignore: must_be_immutable
class FolderlistItemWidget extends StatelessWidget {
  FolderlistItemWidget(this.folderlistItemModel, {Key? key, this.onTapRowCertificates})
      : super(key: key);

  final FolderlistItemModel folderlistItemModel;
  final HomeSecondaryFoldersController controller = Get.find<HomeSecondaryFoldersController>();
  final VoidCallback? onTapRowCertificates;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapRowCertificates,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: folderlistItemModel.imagePath,
            height: 56.h,
            width: 46.h,
          ),
          SizedBox(width: 8.h),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Obx(
                    () => Text(
                  folderlistItemModel.certificates.value,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
