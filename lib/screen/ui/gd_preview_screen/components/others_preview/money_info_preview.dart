import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';
import '../../../../../controller/entry_controller/others_entry_controller.dart';

class MoneyInfoPreview extends StatelessWidget {
  MoneyInfoPreview({Key? key}) : super(key: key);
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
                child: Text('money_info'.tr, style: GTheme.headline),
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
                  title: 'card_type'.tr,
                  data: othersController.othersPreviewName['moneyCardType'] ??
                      ''),
              TextWithTitle(
                  title: 'amount'.tr,
                  data:
                      othersController.othersPreviewName['moneyAmmount'] ?? ''),
              TextWithTitle(
                  title: 'spec_description'.tr,
                  data: othersController.othersPreviewName['specificDetails'] ??
                      ''),
              TextWithTitle(
                  title: 'penny_included'.tr,
                  data: othersController.othersPreviewName['pennyIncluded'] ??
                      ''),
              TextWithTitle(
                  title: 'penny_amount'.tr,
                  data:
                      othersController.othersPreviewName['pennyAmount'] ?? ''),
              TextWithTitle(
                  title: 'penny_type'.tr,
                  data: othersController.othersPreviewName['pennyType'] ?? ''),
            ],
          ),
        ),
      ],
    );
  }
}
