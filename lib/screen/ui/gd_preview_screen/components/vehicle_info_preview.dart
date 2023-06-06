import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';

import '../../../../theme/g_theme.dart';

class VehicleInfoPreview extends StatelessWidget {
  VehicleInfoPreview({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'vehicle_entry'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
          TextWithTitle(title: 'veh_type'.tr, data: controller.vehiclePreviewName['vehicleTypeName']),
          TextWithTitle(title: 'brand_name'.tr, data: controller.vehiclePreviewName['vehicleBrandName']),
          TextWithTitle(title: 'model'.tr, data: controller.apiPostData['modelNo'] ?? ''),
          TextWithTitle(title: 'reg_no'.tr, data: controller.apiPostData['vehicleRegNo'] ?? ''),
          TextWithTitle(title: 'eng_no'.tr, data: controller.apiPostData['engineNo'] ?? ''),
          TextWithTitle(title: 'cha_no'.tr, data: controller.apiPostData['chasisNo'] ?? ''),
          TextWithTitle(title: 'cc'.tr, data: controller.apiPostData['ccNo'] ?? ''),
          TextWithTitle(title: 'made_in'.tr, data: controller.countryName.value),
          TextWithTitle(title: 'prod_date'.tr, data: controller.apiPostData['mfcDate'] ?? ''),
            ],
          ),
        ),
      ],
    );
  }
}
