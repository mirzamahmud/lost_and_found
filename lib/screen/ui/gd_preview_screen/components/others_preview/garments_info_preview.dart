import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/others_entry_controller.dart';

class GarmentsInfoPreview extends StatelessWidget {
  GarmentsInfoPreview({Key? key}) : super(key: key);
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
                  'garments_info'.tr,
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
                  title: 'cloth_type'.tr,
                  data: othersController.othersPreviewName['garmentsType']),
              TextWithTitle(title: 'brand'.tr, data: othersController.othersPreviewName['garmentsBrand']),
              TextWithTitle(title: 'color'.tr, data: othersController.othersPreviewName['colorName']),
              TextWithTitle(title: 'size'.tr, data: othersController.othersPreviewName['garmentsShap']),
              TextWithTitle(title: 'price'.tr, data: othersController.othersPreviewName['garmentsPrice']),
              TextWithTitle(title: 'model'.tr, data: othersController.othersPreviewName['garmentsModel']),
            ],
          ),
        ),
      ],
    );
  }
}
