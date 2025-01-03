import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'controller/home_folders_controller.dart';

// ignore: must_be_immutable
class HomeFoldersScreen extends GetWidget<HomeFoldersController> {
  const HomeFoldersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildAppBar(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: onTapTxtFoldersOne,
                child: Text(
                  "lbl_folders".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
            const Spacer(flex: 39),
            CustomImageView(
              imagePath: ImageConstants.imgGroup,
              width: 180.0,
            ),
            SizedBox(height: 8.h),
            Text(
              "msg_you_don_t_have_any".tr,
              style: CustomTextStyles.titleSmallRobotoBluegray7ee,
            ),
            SizedBox(height: 2.h),
            Text(
              "msg_scan_or_add_your".tr,
              style: theme.textTheme.bodySmall,
            ),
            const Spacer(flex: 60),
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
        margin: EdgeInsets.only(left: 17.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.img),
            fit: BoxFit.fill,
          ),
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstants.imgUserCircleLight,
          margin: EdgeInsets.only(right: 10.h),
          onTap: onTapUserCircleOne,
        ),
      ],
      styleType: Style.bgOutlineBlack900,
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

  /// Handling routes for bottom navigation
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

  /// Navigation to Profile Details Screen
  void onTapUserCircleOne() {
    Get.toNamed(AppRoutes.profileDetailsScreen);
  }

  /// Navigation to Home Folders One Screen
  void onTapTxtFoldersOne() {
    Get.toNamed(AppRoutes.homeFoldersOneScreen);
  }
}
