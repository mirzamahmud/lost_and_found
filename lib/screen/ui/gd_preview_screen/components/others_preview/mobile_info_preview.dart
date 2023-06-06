import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';
import '../../../../../controller/entry_controller/info_entry_controller.dart';
import '../../../../../controller/entry_controller/others_entry_controller.dart';

class MobileInfoPreview extends StatelessWidget {
  MobileInfoPreview({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
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
                child: Text('mobile_info'.tr, style: GTheme.headline),
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
                  title: 'mobile_type'.tr,
                  data: othersController.othersPreviewName['mobileType']),
              TextWithTitle(
                  title: 'brand_type'.tr,
                  data: othersController.othersPreviewName['mobileBrandName']),
              TextWithTitle(
                  title: 'model'.tr,
                  data: othersController.othersPreviewName['mobileModel']),
              TextWithTitle(
                  title: 'mac'.tr,
                  data: othersController.othersPreviewName['macAddress']),
              TextWithTitle(
                  title: 'serial_no'.tr,
                  data: othersController.othersPreviewName['mobileSerial']),
              TextWithTitle(
                  title: 'amount'.tr,
                  data: othersController.othersPreviewName['mobileAmmount']),
              TextWithTitle(
                  title: 'os'.tr,
                  data: othersController
                      .othersPreviewName['mobileOperatinSystem']),
              TextWithTitle(
                  title: 'color'.tr,
                  data: othersController.othersPreviewName['colorName']),
              TextWithTitle(
                  title: 'imei'.tr,
                  data: othersController.othersPreviewName['mobileIME']),
              TextWithTitle(
                  title: 'screen_size'.tr,
                  data: othersController.othersPreviewName['screenShap']),
              TextWithTitle(
                  title: 'battery'.tr,
                  data: othersController.othersPreviewName['mobileBattery']),
              TextWithTitle(
                  title: 'price'.tr,
                  data: othersController.othersPreviewName['mobilePrice']),
              TextWithTitle(
                  title: 'ram'.tr,
                  data:
                      '${controller.apiPostData['rAM']} ${controller.apiPostData['rAMSize']}'),
              TextWithTitle(
                  title: 'rom'.tr,
                  data:
                      '${controller.apiPostData['rOM']} ${controller.apiPostData['rOMSize']}'),
            ],
          ),
        ),
      ],
    );
  }
}
