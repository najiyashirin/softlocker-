import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'controller/home_folders_one_controller.dart';
import 'home_folders_one_initial_page.dart'; // ignore: must_be_immutable

class HomeFoldersOneScreen extends GetWidget<HomeFoldersOneController> {
  const HomeFoldersOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: AppRoutes.homeFoldersOneInitialPage,
        onGenerateRoute: (routeSettings) => GetPageRoute(
          page: () => getCurrentPage(routeSettings.name),
          transition: Transition.noTransition,
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  /// Bottom Navigation Bar Widget
  Widget _buildBottomNavigationBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Handling route based on bottom navigation actions
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

  /// Handling page based on the current route
  Widget getCurrentPage(String? currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeFoldersOneInitialPage:
        return HomeFoldersOneInitialPage();
      default:
        return const DefaultWidget();
    }
  }
}
