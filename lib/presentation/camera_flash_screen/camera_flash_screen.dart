import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../core/app_export.dart';
import 'controller/camera_flash_controller.dart'; // ignore: file_names

class CameraFlashScreen extends StatelessWidget {
  const CameraFlashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.black900,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 50.0,
        ),
        child: Column(
          children: [
            const SizedBox(height: 14.0),
            _buildCloseControls(),
            const SizedBox(height: 22.0),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 212.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 6.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    _buildClockColumnOff(
                      clockImage: ImageConstant.imgClockCyan4eo,
                      statusText: "1bl_on".tr,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 36.0),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: _buildClockColumnOff(
                clockImage: ImageConstant.imgClock,
                statusText: "1bl_off".tr,
              ),
            ),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: DottedBorder(
                padding: const EdgeInsets.all(3),
                strokeWidth: 3,
                radius: const Radius.circular(34),
                borderType: BorderType.RRect,
                dashPattern: [5, 1],
                child: Container(
                  width: 72,
                  decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(0.2),
                              spreadRadius: 6,
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 44.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CustomImageView(
                        imagePath:
                        ImageConstant.imgSettingsonprimarycontainer,
                        height: 34.0,
                        width: 34.0,
                        margin: const EdgeInsets.only(left: 2.0, right: 4.0),
                        onTap: onTapImgSettingsOne,
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        "1b1_import".tr,
                        style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Close Controls Section
  Widget _buildCloseControls() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 6),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 16,
            width: 18,
            onTap: onTapImgCloseOne,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClockOnPrimaryContainer,
            height: 22,
            width: 24,
          ),
        ],
      ),
    );
  }

  /// Clock Column Off Widget
  Widget _buildClockColumnOff({
    required String clockImage,
    required String statusText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: clockImage,
          height: 22,
          width: 22,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            statusText,
            style: CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
    );
  }

  /// Navigates to the previous screen
  void onTapImgCloseOne() {
    Get.back();
  }

  /// Navigates to the Choose Image Screen
  void onTapImgSettingsOne() {
    Get.toNamed(AppRoutes.chooseImageScreen);
  }
}
