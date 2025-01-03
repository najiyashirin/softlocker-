import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'controller/add_newfile_controller.dart'; // ignore_for_file: file_names

class AddNewFileScreen extends GetWidget<AddNewFileController> {
  const AddNewFileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            _buildHeaderRow(),
            const SizedBox(height: 12),
            const Divider(),
            const Spacer(flex: 56),
            CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 134,
              width: 180,
            ),
            const SizedBox(height: 8),
            Text(
              "msg_you_don_t_have_any2".tr,
              style: CustomTextStyles.titlesmallRobotoBluegray7e0,
            ),
            const SizedBox(height: 2),
            Text(
              "msg_scan_or_add_your".tr,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer(flex: 43),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 42,
                margin: const EdgeInsets.only(right: 32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                ),
                child: GestureDetector(
                  onTap: () {
                    onTapStackSubtract();
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    color: AppTheme.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSubtract,
                            height: 22,
                            width: 22,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVectors2,
                              height: 6,
                              width: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 44),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  /// Header Row Section
  Widget _buildHeaderRow() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 32,
            width: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserCircleLight,
            height: 42,
            width: 44,
            onTap: onTapImgUserCircleOne,
          ),
        ],
      ),
    );
  }

  /// Bottom Navigation Section
  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Routing Logic for Bottom Navigation
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.homeFoldersOneInitialPage;
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Cloudline:
        return "/";
      default:
        return "/";
    }
  }

  /// Navigate to Profile Details Screen
  void onTapImgUserCircleOne() {
    Get.toNamed(AppRoutes.profileDetailsScreen);
  }

  /// Navigate to Screen After Clicking Add New File
  void onTapStackSubtract() {
    Get.toNamed(AppRoutes.screenAfterClickingAddNewFileScreen);
  }
}
