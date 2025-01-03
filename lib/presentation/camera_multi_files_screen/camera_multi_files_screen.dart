import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/camera_multi_files_controller.dart'; // ignore: file_names

class CameraMultiFilesScreen extends GetWidget<CameraMultiFilesController> {
  const CameraMultiFilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.backgroundColor,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),
        child: Column(
          children: [
            const SizedBox(height: 14),
            _buildCloseControlsRow(),
            const Spacer(),
            SizedBox(
              height: 26,
              width: 158,
              child: Stack(
                alignment: Alignment.center,
                children: const [
                  LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: Colors.grey,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),
            _buildActionButtonRow(),
            const SizedBox(height: 36),
            _buildDottedContainer(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomTextFormField(
                width: 52,
                controller: controller.edittextoneController,
                textInputAction: TextInputAction.done,
                contentPadding: const EdgeInsets.all(12),
                borderDecoration:
                TextFormFieldStyleHelper.outlineOnPrimaryContainer(),
                fillColor: appTheme.gray500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the close button row
  Widget _buildCloseControlsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          onPressed: () => Get.back(),
        ),
        Text(
          "Close".tr,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  /// Builds the action button row
  Widget _buildActionButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTapKnobEmptyOne,
          child: Container(
            height: 22,
            width: 74,
            decoration: BoxDecoration(
              color: appTheme.blueGray76ee1,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(width: 10),
        CustomElevatedButton(
          height: 22,
          text: "1b1_multiple_pages".tr,
          buttonStyle: CustomButtonStyles.fillCyanTL1e,
          buttonTextStyle: CustomTextStyles.bodySmallOnPrimaryContainer,
          onPressed: () {
            // Define action here
          },
        ),
      ],
    );
  }

  /// Builds a dotted border container
  Widget _buildDottedContainer() {
    return Container(
      width: 72,
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadius.circular(34),
      ),
      child: DottedBorder(
        padding: const EdgeInsets.all(3),
        strokeWidth: 3,
        radius: const Radius.circular(3),
        borderType: BorderType.RRect,
        dashPattern: [5, 1],
        child: Container(
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadius.circular(34),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 66,
                width: 66,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
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
    );
  }

  /// Navigates to the Camera Screen
  void onTapKnobEmptyOne() {
    Get.toNamed(AppRoutes.cameraScreen);
  }
}
