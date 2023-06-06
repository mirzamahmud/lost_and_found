import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/others_entry_controller.dart';

class PetsInfoPreview extends StatelessWidget {
   PetsInfoPreview({Key? key}) : super(key: key);

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
                  'pet_info'.tr,
                  style: GTheme.headline,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:  const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(title: 'pet_type'.tr, data: othersController.othersPreviewName['petType'] ?? ''),
              TextWithTitle(title: 'size'.tr, data: othersController.othersPreviewName['petSize'] ?? ''),
              TextWithTitle(title: 'quantity'.tr, data: othersController.othersPreviewName['petAmmount'] ?? ''),
            ],
          ),
        ),
      ],
    );
  }
}
