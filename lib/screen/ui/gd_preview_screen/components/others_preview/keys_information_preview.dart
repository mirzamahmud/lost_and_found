import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/info_entry_controller.dart';
import '../../../../../controller/entry_controller/others_entry_controller.dart';

class KeysInformationPreview extends StatelessWidget {
  KeysInformationPreview({Key? key}) : super(key: key);
  final othersController = Get.find<OthersEntryController>();
  final controller = Get.find<InfoEntryController>();

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
                  'key_info'.tr,
                  style: GTheme.headline,
                ),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: hColumnHorizontal, vertical: hColumnVertical),
            child: Column(children: [
              TextWithTitle(
                  title: 'key_type'.tr,
                  data: othersController.othersPreviewName['keyType'] ?? ''),
              TextWithTitle(
                  title: 'color'.tr,
                  data: othersController.othersPreviewName['colorName'] ?? ''),
              TextWithTitle(
                  title: 'key_description'.tr,
                  data: othersController.othersPreviewName['keyDetails'] ?? ''),
              TextWithTitle(
                  title: 'shape'.tr,
                  data: othersController.othersPreviewName['keyShap'] ?? ''),
              TextWithTitle(
                  title: 'quantity'.tr,
                  data: othersController.othersPreviewName['keyAmmount'] ?? ''),
            ]))
      ],
    );
  }
}
