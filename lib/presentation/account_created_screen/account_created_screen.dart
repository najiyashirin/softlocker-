import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_button_bar.dart';
import 'controller/account_created_controller.dart';

class AccountCreatedScreen extends GetWidget<AccountCreatedController> {
  const AccountCreatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: sizeUtils.height,
        decoration: AppDecoration.gradientSecondaryContainerToPrimaryContainer,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: double.infinity,
              child: _buildAppBar(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: TImageConstant.imgVvishayamfxdlogo,
                  height: 56.h,
                  width: 70.h,
                  margin: EdgeInsets.only(left: 16.h),
                ),
                SizedBox(height: 26.h),
                Text(
                  "1b1_softlocker".tr,
                  style: CustomTextStyles.headlinesmallurbanistIndigogee,
                ),
                SizedBox(height: 66.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.symmetric(horizontal: 18.h),
                    color: theme.colorScheme.secondaryContainer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      height: 488.h,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      decoration: AppDecoration.outlineBlackee.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: TImageConstant.imgVerifiedRemovebgPreview,
                            height: 212.h,
                            width: 210.h,
                            alignment: Alignment.topCenter,
                          ),
                          Container(
                            width: 256.h,
                            margin: EdgeInsets.only(bottom: 92.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "msg_account_created".tr,
                                  style: CustomTextStyles.titleMediumBlack,
                                ),
                                SizedBox(height: 66.h),
                                CustomElevatedButton(
                                  height: 82.h,
                                  text: "lbl_go_to_login".tr,
                                  margin: EdgeInsets.only(left: 2.h),
                                  buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                                  buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
                                  onPressed: () {
                                    onTapGoToLogin();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 40.h,
      leadingWidth: 62.h,
      leading: AppBarLeadingImage(
        imagePath: ImageConstant.imgBackButtonRemovebgPreview,
        height: 40.h,
        width: 40.h,
        margin: EdgeInsets.only(left: 22.h),
      ),
    );
  }

  /// Navigates to the LoginProScreen when the action is triggered.
  void onTapGoToLogin() {
    Get.toNamed(
      AppRoutes.loginproScreen,
    );
  }
}
