import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/others_entry_controller.dart';

class JewelryInfoPreview extends StatelessWidget {
  JewelryInfoPreview({Key? key}) : super(key: key);
  final othersController = Get.find<OthersEntryController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  'jewelery_info'.tr,
                  style: GTheme.headline,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(
                  title: 'jew_type'.tr,
                  data: othersController.othersPreviewName['jeweleryType'] ?? ''),
              TextWithTitle(
                  title: 'brand'.tr,
                  data: othersController.othersPreviewName['jeweleryBrand'] ?? ''),
              TextWithTitle(
                  title: 'color'.tr,
                  data: othersController.othersPreviewName['colorName'] ?? ''),
              TextWithTitle(
                  title: 'price'.tr,
                  data: othersController.othersPreviewName['jeweleryPrice'] ?? ''),
              TextWithTitle(
                  title: 'model'.tr,
                  data: othersController.othersPreviewName['jeweleryModel'] ?? ''),
              TextWithTitle(
                  title: 'weight'.tr,
                  data: othersController.othersPreviewName['jeweleryWeight'] ?? ''),
              TextWithTitle(
                  title: 'karat'.tr,
                  data: othersController.othersPreviewName['jeweleryKarat'] ?? ''),
            ],
          ),
        )
      ],
    );
  }
}
