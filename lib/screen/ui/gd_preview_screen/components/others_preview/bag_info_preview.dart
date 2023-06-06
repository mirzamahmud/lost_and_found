import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';
import '../../../../../controller/entry_controller/others_entry_controller.dart';

class BagInfoPreview extends StatelessWidget {
  BagInfoPreview({Key? key}) : super(key: key);
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
                child: Text(
                  'bag_info'.tr,
                  style: GTheme.headline,
                ),
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
                  title: 'bag_type'.tr,
                  data: othersController.othersPreviewName['bagType'] ?? ''),
              TextWithTitle(
                  title: 'color'.tr,
                  data: othersController.othersPreviewName['colorName'] ?? ''),
              TextWithTitle(
                  title: 'shape'.tr,
                  data: othersController.othersPreviewName['shap'] ?? ''),
              TextWithTitle(
                  title: 'price'.tr,
                  data: othersController.othersPreviewName['price'] ?? ''),
              TextWithTitle(
                  title: 'amount'.tr,
                  data: othersController.othersPreviewName['amount'] ?? ''),
              TextWithTitle(
                  title: 'model'.tr,
                  data: othersController.othersPreviewName['model'] ?? ''),
              TextWithTitle(
                  title: 'serial_no'.tr,
                  data: othersController.othersPreviewName['serialNo'] ?? ''),
              // todo to check previous app
              // TextWithTitle(title: 'amount'.tr, data: othersController.othersPreviewName['quantity'] ?? ''),
            ],
          ),
        )
      ],
    );
  }
}
