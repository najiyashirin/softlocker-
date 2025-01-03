import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import 'controller/document_viewing_controller.dart'; // ignore_for_file: must_be_immutable

class DocumentViewingScreen extends GetWidget<DocumentViewingController> {
  const DocumentViewingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: _buildAppBar(),
              ),
              Container(
                height: 792.h,
                width: double.infinity,
                padding: EdgeInsets.only(top: 72.h),
                decoration: AppDecoration.fillOnErrorContainer,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 280.h,
                      width: 346.h,
                      margin: EdgeInsets.only(top: 14.h),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 6.h,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage3,
                            height: 284.h,
                            width: double.infinity,
                          ),
                          SizedBox(height: 16.h),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage2248x360,
                            height: 248.h,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildEditFab(),
    );
  }

  /// App Bar Section
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.h,
      shape: const Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        height: 44.h,
        width: 44.h,
        margin: EdgeInsets.only(left: 10.h),
        onTap: () {
          onTapArrowLeftOne();
        },
      ),
      title: AppbarSubtitleTwo(
        text: "msg_semester_7_cfep".tr,
        margin: EdgeInsets.only(right: 29.h),
        styleType: Style.bgFillBlack900,
      ),
    );
  }

  /// Floating Action Button Section
  Widget _buildEditFab() {
    return CustomFloatingButton(
      height: 60.h,
      width: 60.h,
      backgroundColor: appTheme.lightBlue800,
      child: CustomImageView(
        imagePath: ImageConstant.imgEdit,
        height: 30.h,
        width: 30.h,
      ),
    );
  }

  /// Navigate to the previous screen
  void onTapArrowLeftOne() {
    Get.back();
  }
}
