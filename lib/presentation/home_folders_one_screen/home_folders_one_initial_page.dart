import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import 'controllers/home_folders_one_controller.dart';
import 'models/home_folders_grid_item_model.dart';
import 'widgets/home_folders_grid_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomeFoldersOneInitialPage extends StatelessWidget {
  HomeFoldersOneInitialPage({Key? key}) : super(key: key);

  final HomeFoldersOneController controller = Get.put(HomeFoldersOneController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeaderRow(),
          const SizedBox(height: 12.0),
          const Divider(),
          const SizedBox(height: 4.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "lbl_folders".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          _buildHomeFoldersGrid(),
        ],
      ),
    );
  }

  /// Header Row Section
  Widget _buildHeaderRow() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 32.0,
            width: 46.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserCircleLight,
            height: 42.0,
            width: 44.0,
          ),
        ],
      ),
    );
  }

  /// Home Folders Grid Section
  Widget _buildHomeFoldersGrid() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Obx(
              () => ResponsiveGridListBuilder(
            minItemWidth: 120.0,
            minItemsPerRow: 4,
            maxItemsPerRow: 4,
            horizontalGridSpacing: 16.0,
            verticalGridSpacing: 16.0,
            children: List.generate(
              controller.homeFoldersOneInitialModelObj.value.homeFoldersGridItemList.value.length,
                  (index) {
                HomeFoldersGridItemModel model = controller
                    .homeFoldersOneInitialModelObj
                    .value
                    .homeFoldersGridItemList
                    .value[index];
                return HomeFoldersGridItemWidget(model);
              },
            ),
          ),
        ),
      ),
    );
  }
}
