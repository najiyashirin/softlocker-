import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

import '../controller/home_folders_one_controller.dart';
import '../models/homefoldersgrid_item_model.dart';

// ignore: must_be_immutable
class HomefoldersgridItemWidget extends StatelessWidget {
  HomefoldersgridItemWidget(this.homefoldersgridItemModelObj, {Key? key}) : super(key: key);

  final HomefoldersgridItemModel homefoldersgridItemModelObj;

  var controller = Get.find<HomeFoldersOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 14.0),
      decoration: AppDecoration.column,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 84.0),
          Obx(() => Text(
            homefoldersgridItemModelObj.education!.value,
            style: theme.textTheme.bodySmall,
          )),
        ],
      ),
    );
  }
}
