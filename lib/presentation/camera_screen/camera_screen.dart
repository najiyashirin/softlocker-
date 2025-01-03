import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../core/app_export.dart';
import 'controller/camera_controller.dart'; // ignore_for_file: must_be_immutable

class CameraScreen extends GetWidget<CameraController> {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.black,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 50.0,
        ),
        child: Column(
          children: [
            const SizedBox(height: 14.0),
            _buildCloseControlsRow(),
            const Spacer(),
            _buildSinglePageButton(),
            const SizedBox(height: 36.0),
            _buildIconRow(),
            const SizedBox(height: 36.0),
            _buildDottedContainer(),
          ],
        ),
      ),
    );
  }

  /// Single Page Button Section
  Widget _buildSinglePageButton() {
    return Container(
      width: 156.0,
      decoration: AppDecoration.fillBlueGrayB.copyWith(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 8.0,
            ),
            decoration: AppDecoration.fillCyan.copyWith(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              "lb1_single_page".tr,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodySmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Icon Row Section
  Widget _buildIconRow() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsOnPrimaryContainer,
                  height: 34.0,
                  width: 34.0,
                  margin: const EdgeInsets.only(left: 2.0, right: 4.0),
                ),
                const SizedBox(height: 4.0),
                Text(
                  "1b1_import".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Dotted Border Container Section
  Widget _buildDottedContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: DottedBorder(
        padding: const EdgeInsets.all(3.0),
        strokeWidth: 3.0,
        radius: const Radius.circular(34),
        borderType: BorderType.RRect,
        dashPattern: [56, 1],
        child: Container(
          width: 76.0,
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadius.circular(34.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 60.0,
                width: 66.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.onPrimary.withOpacity(0.2),
                      spreadRadius: 6,
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                    BoxShadow(
                      color: theme.colorScheme.onPrimary,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Close Controls Row
  Widget _buildCloseControlsRow() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 16.0,
            width: 18.0,
            onTap: onTapImgCloseOne,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 22.0,
            width: 24.0,
            onTap: onTapImgClockOne,
          ),
        ],
      ),
    );
  }

  /// Navigate to Previous Screen
  void onTapImgCloseOne() {
    Get.back();
  }

  /// Navigate to Camera Flash Screen
  void onTapImgClockOne() {
    Get.toNamed(AppRoutes.cameraFlashScreen);
  }

  /// Navigate to Camera Multi-Files Screen
  void onTapKnobEmptyOne() {
    Get.toNamed(AppRoutes.cameraMultiFilesScreen);
  }
}
