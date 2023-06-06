import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/details_others_preview.dart';
import 'package:online_gd/screen/ui/gd_preview_screen/components/place_time_preview.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';

import '../../../controller/entry_controller/others_entry_controller.dart';
import '../../../theme/g_theme.dart';
import 'components/attachment_preview.dart';
import 'components/others_preview/mobile_info_preview.dart';
import 'components/others_preview/others_identity_info_preview.dart';
import 'components/others_preview/phone_indentity_preview.dart';
import 'components/others_preview/product_info_preview.dart';

class MobilePreviewScreen extends StatelessWidget {
  MobilePreviewScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final compController = Get.find<OthersEntryController>();
  final othersController = Get.find<OthersEntryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('mobile'.tr),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MobileInfoPreview(),
            const SizedBox(height: 20),
            PhoneIdentityPreview(
              identityInfoValue:
                  othersController.othersPreviewName['mobileIdentitryInfo'] ??
                      '',
            ),
            const SizedBox(height: 20),
            /// todo need to attach add
            // need to create MobileAttachmentPreview),
            const SizedBox(height: 20),
            PlaceTimePreview(
              distValue: controller.vehiclePreviewName['distName']  ?? '',
              thanaValue: controller.vehiclePreviewName['thanaName']  ?? '',
              unionValue: controller.vehiclePreviewName['unionName']  ?? '',
              villValue: controller.vehiclePreviewName['villageName']  ?? '',
              placeInfoValue: controller.vehiclePreviewName['placeDetails']  ?? '',
              dateValue: controller.apiPostData['lafDate']  ?? '',
              timeValue: controller.apiPostData['lafTime']  ?? '',
            ),
            const SizedBox(height: 20),
            DetailsOthersPreview(
              fullDetailsValue: controller.vehiclePreviewName['fullDetails']  ?? '',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(25)),
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
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextButton(
                        onPressed: () {
                          compController.postOthersEntryData(controller.apiPostData);

                          /*Get.snackbar('Alert!', 'alert'.tr,
                              snackPosition: SnackPosition.BOTTOM);*/
                        },
                        child: Text('submit'.tr, style: GTheme.title),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
