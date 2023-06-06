
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/others_entry_controller.dart';

class ElectronicsInfoPreview extends StatelessWidget {
  ElectronicsInfoPreview({Key? key}) : super(key: key);
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
                child: Text('electronics_info'.tr, style: GTheme.headline),
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
                  title: 'type'.tr,
                  data: othersController.othersPreviewName['electType'] ?? ''),
              TextWithTitle(
                  title: 'brand_type'.tr,
                  data: othersController.othersPreviewName['electBrandType'] ??
                      ''),
              TextWithTitle(
                  title: 'brand'.tr,
                  data: othersController.othersPreviewName['electBrand'] ?? ''),
              TextWithTitle(
                  title: 'model'.tr,
                  data: othersController.othersPreviewName['electModel'] ?? ''),
              TextWithTitle(
                  title: 'serial_no'.tr,
                  data: othersController.othersPreviewName['electSerialNo'] ??
                      ''),
              TextWithTitle(
                  title: 'price'.tr,
                  data: othersController.othersPreviewName['electPrice'] ?? ''),
            ],
          ),
        ),
      ],
    );
  }
}
