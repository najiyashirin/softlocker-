import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/loginpro_controller.dart';

// ignore_for_file: must_be_immutable
class Loginproscreen extends GetWidget<LoginproController> {
  Loginproscreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientOnPrimaryContainerToBlue,
        child: Form(
          key: _formKey,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: SizeUtils.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildHeader(),
                    Expanded(child: _buildLoginForm()),
                    const SizedBox(height: 30),
                    _buildAlternativeLoginOptions(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Header Section
  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 78.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.lightBlue]),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVishayamFxdLogo,
            height: 78.0,
            width: 96.0,
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Text(
              "1b1_softlocker".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Login Form Section
  Widget _buildLoginForm() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "1b1_login".tr,
            style: CustomTextStyles.headlineMedium.copyWith(color: AppColors.gray2),
          ),
          const SizedBox(height: 46.0),
          CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_enter_your_email".tr,
            textInputType: TextInputType.emailAddress,
            suffix: Container(
              margin: const EdgeInsets.all(16.0),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 22.0,
                width: 20.0,
                fit: BoxFit.contain,
              ),
            ),
            suffixConstraints: const BoxConstraints(maxHeight: 56.0),
            contentPadding: const EdgeInsets.all(16.0),
            validator: (value) {
              if (value == null || !isValidEmail(value, isRequired: true)) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          ),
          const SizedBox(height: 14.0),
          Obx(
                () => CustomTextFormField(
              controller: controller.passwordController,
              hintText: "msg_enter_your_password".tr,
              textInputType: TextInputType.visiblePassword,
              obscureText: controller.isShowPassword.value,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value = !controller.isShowPassword.value;
                },
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBag,
                    height: 22.0,
                    width: 18.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              suffixConstraints: const BoxConstraints(maxHeight: 56.0),
              contentPadding: const EdgeInsets.all(16.0),
              validator: (value) {
                if (value == null || !isValidPassword(value, isRequired: true)) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "msg_forgot_password".tr,
              style: CustomTextStyles.titleSmallGray2ee,
            ),
          ),
          const SizedBox(height: 46.0),
          CustomElevatedButton(
            text: "lbl_login2".tr,
            buttonStyle: CustomButtonStyles.fillCyan,
            buttonTextStyle: CustomTextStyles.titleMediumCyanOee,
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                onTapLoginTwo();
              }
            },
          ),
        ],
      ),
    );
  }

  /// Alternative Login Options Section
  Widget _buildAlternativeLoginOptions() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: Divider(color: Colors.black)),
            const SizedBox(width: 12.0),
            Text(
              "Sign in or login with".tr,
              style: CustomTextStyles.titleSmallSemiBold,
            ),
            const SizedBox(width: 12.0),
            const Expanded(child: Divider(color: Colors.black)),
          ],
        ),
        const SizedBox(height: 12.0),
        CustomImageView(
          imagePath: ImageConstant.imgGoogleIconRemovebgPreview,
          height: 44.0,
          width: 44.0,
        ),
        const SizedBox(height: 24.0),
        GestureDetector(
          onTap: onTapTxtDontHaveAnAccount2,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_don_t_have_an_account".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "lbl_register_now".tr,
                  style: CustomTextStyles.titleMediumLightBlue,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Navigation Methods
  void onTapLoginTwo() {
    Get.toNamed(AppRoutes.homeFoldersScreen);
  }

  void onTapTxtDontHaveAnAccount2() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
