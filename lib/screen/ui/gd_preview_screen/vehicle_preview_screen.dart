import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/details_others_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/place_time_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/vehicle_identity_preview.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';

import '../../../theme/g_theme.dart';
import '../../../util/constants.dart';
import 'components/attachment_preview.dart';
import 'components/vehicle_info_preview.dart';

class VehiclePreviewScreen extends StatelessWidget {
  VehiclePreviewScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('vehicle_entry'.tr),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VehicleInfoPreview(),
            const SizedBox(height: 20),
            VehicleIdentityPreview(),
            const SizedBox(height: 20),
            const AttachmentPreview(),
            const SizedBox(height: 20),
             PlaceTimePreview(
              distValue: controller.vehiclePreviewName['distName'] ?? '',
              thanaValue: controller.vehiclePreviewName['thanaName'] ?? '',
              unionValue: controller.vehiclePreviewName['unionName'] ?? '',
              villValue: controller.vehiclePreviewName['villageName'] ?? '',
              placeInfoValue: controller.vehiclePreviewName['placeDetails'] ?? '',
              dateValue: Constants.formattedPreviewDate(controller.apiPostData['lafDate']),
              timeValue: Constants.formatTime(controller.apiPostData['lafTime']),
            ),
            const SizedBox(height: 20),
            DetailsOthersPreview(
              fullDetailsValue:
              controller.vehiclePreviewName['fullDetails'] ?? '',
            ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('back'.tr, style: GTheme.title),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextButton(
                    onPressed: () {
                      controller.postVehicleEntryData();
                    },
                    child: Text('submit'.tr, style: GTheme.title),
                  ),
                ),
              )
            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
