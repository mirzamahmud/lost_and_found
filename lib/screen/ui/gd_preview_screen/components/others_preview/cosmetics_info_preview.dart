import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/others_entry_controller.dart';

class CosmeticsInfoPreview extends StatelessWidget {
  CosmeticsInfoPreview({Key? key}) : super(key: key);

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
            children: <Widget>[
              SizedBox(
                child: Text('cosmetics_info'.tr, style: GTheme.headline),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(
                  title: 'cosmetics_type'.tr,
                  data:
                      othersController.othersPreviewName['cosmeticType'] ?? ''),
              // todo will have to change in the future
              /*  TextWithTitle(
                  title: 'brand'.tr,
                  data: othersController.othersPreviewName['cosmeticBrand'] ??
                      ''),*/
              TextWithTitle(
                  title: 'color'.tr,
                  data: othersController.othersPreviewName['colorName'] ?? ''),
              TextWithTitle(
                  title: 'shape'.tr,
                  data:
                      othersController.othersPreviewName['cosmeticShap'] ?? ''),
              TextWithTitle(
                  title: 'price'.tr,
                  data: othersController.othersPreviewName['cosmeticprice'] ??
                      ''),
              TextWithTitle(
                  title: 'model'.tr,
                  data: othersController.othersPreviewName['cosmeticsModel'] ??
                      ''),
              TextWithTitle(
                  title: 'amount'.tr,
                  data: othersController.othersPreviewName['cosmeticsAmount'] ??
                      ''),
            ],
          ),
        ),
      ],
    );
  }
}
