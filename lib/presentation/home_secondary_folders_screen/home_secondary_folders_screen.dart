import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'controller/home_secondary_folders_controller.dart';
import 'models/folderlist_item_model.dart';
import 'widgets/folderlist_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomeSecondaryFoldersScreen extends GetWidget<HomeSecondaryFoldersController> {
  const HomeSecondaryFoldersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildAppBar(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 16, top: 18, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onTapTxtFoldersOne,
              child: Text(
                "msg_folders_education".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 12.0),
            _buildFolderList(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  /// App Bar Section
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Container(
        height: 32.h,
        width: 46.h,
        margin: EdgeInsets.only(left: 17.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.image),
            fit: BoxFit.fill,
          ),
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUserCircleLight,
          margin: EdgeInsets.only(right: 10.h),
          onTap: onTapUserProfileCircleOne,
        ),
      ],
      styleType: Style.bgOutlineBlack,
    );
  }

  /// Folder List Section
  Widget _buildFolderList() {
    return Expanded(
      child: Obx(
            () => ListView.separated(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(height: 14.0),
          itemCount: controller.homeSecondaryFoldersModel.value.folderListItems.length,
          itemBuilder: (context, index) {
            FolderlistItemModel model =
            controller.homeSecondaryFoldersModel.value.folderListItems[index];
            return FolderlistItemWidget(
              model,
              onTapRowCertificates: onTapRouteCertificates,
            );
          },
        ),
      ),
    );
  }

  /// Bottom Navigation Bar Section
  Widget _buildBottomNavigationBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Handling routes based on bottom navigation actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.homeFoldersOneInitialPage;
      case BottomBarEnum.Home:
        return AppRoutes.home;
      case BottomBarEnum.Cloudline:
        return AppRoutes.cloudline;
      default:
        return AppRoutes.home;
    }
  }

  /// Navigate to Profile Details Screen
  void onTapUserProfileCircleOne() {
    Get.toNamed(AppRoutes.profileDetailsScreen);
  }

  /// Navigate to Home Folders One Screen
  void onTapTxtFoldersOne() {
    Get.toNamed(AppRoutes.homeFoldersOneScreen);
  }

  /// Navigate to Home Tertiary File Screen
  void onTapRouteCertificates() {
    Get.toNamed(AppRoutes.homeTertiaryFileScreen);
  }
}
