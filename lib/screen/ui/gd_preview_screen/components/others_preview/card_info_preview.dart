import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/info_entry_controller.dart';
import '../../../../../controller/entry_controller/others_entry_controller.dart';

class CardInfoPreview extends StatelessWidget {
  CardInfoPreview({Key? key}) : super(key: key);
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
            children: <Widget>[
              SizedBox(
                child: Text('card_type'.tr, style: GTheme.headline),
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: hColumnHorizontal, vertical: hColumnVertical),
            child: Column(children: [
              TextWithTitle(
                  title: 'doc_type'.tr,
                  data: othersController.othersPreviewName['cardType'] ?? ''),
              TextWithTitle(
                  title: 'brand'.tr,
                  data: othersController.othersPreviewName['cardBrandType'] ??
                      ''),
              TextWithTitle(
                  title: 'bank_name'.tr,
                  data: othersController.othersPreviewName['bankName'] ?? ''),
              TextWithTitle(
                  title: 'card_number'.tr,
                  data: othersController.othersPreviewName['cardNo'] ?? ''),
              TextWithTitle(
                  title: 'org_name'.tr,
                  data: othersController.othersPreviewName['org_name'] ?? ''),
              TextWithTitle(
                  title: 'person_name'.tr,
                  data: othersController.othersPreviewName['personName'] ?? ''),
              TextWithTitle(
                  title: 'expire_date'.tr,
                  data: controller.apiPostData['expireDate'] ?? ''),
              TextWithTitle(
                  title: 'color'.tr,
                  data: othersController.othersPreviewName['colorName'] ?? ''),
            ]))
      ],
    );
  }
}
