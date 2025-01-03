import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/choose_image_controller.dart'; // ignore: must_be_immutable

class ChooseImageScreen extends StatefulWidget {
  const ChooseImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.image2123,
                  height: 818,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}