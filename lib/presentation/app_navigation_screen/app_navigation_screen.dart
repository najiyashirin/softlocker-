import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SizedBox(
        width: 375,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Text(
                      "App Navigation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFE08EEE),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Text(
                      "Check your app's UI from the below demo screens of your app.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 16.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xFFEEEEEE),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              screenTitle: "Home Folders",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeFoldersScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Starting Screen",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.startingScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Register",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.registerScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Account Created",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.accountCreatedScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Home-Folders One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeFoldersOneScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Home-Secondary Folders",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeSecondaryFoldersScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Home-Tertiary Files",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeTertiaryFilesScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Document Viewing",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.documentViewingScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Profile Details",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileDetailsScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Add New File",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addNewFileScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Screen After Clicking Add New File",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.screenAfterClickingAddNewFileScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Choose Image",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chooseImageScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Media",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.mediaScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Camera",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cameraScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Camera Flash",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cameraFlashScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Camera Multi-File",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cameraMultiFilesScreen),
                            ),
                            _buildScreenTitle(
                              screenTitle: "Media One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.mediaOneScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common Widget
  Widget _buildScreenTitle({
    required String screenTitle,
    required Function onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle.call();
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF0086EE),
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFF838888),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigation Function
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
