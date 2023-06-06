import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/others_entry_controller.dart';



class ProductInfoPreview extends StatelessWidget {
   ProductInfoPreview({Key? key}) : super(key: key);
  final othersController = Get.find<OthersEntryController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: deactivatedColor,
          padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  'product_info'.tr,
                  style: GTheme.headline,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(title: 'product_brand'.tr, data: othersController.othersPreviewName['productBrand']),
              TextWithTitle(title: 'model'.tr, data: othersController.othersPreviewName['productModel']),
              TextWithTitle(title: 'service_tag'.tr, data: othersController.othersPreviewName['serviceTag']),
              TextWithTitle(title: 'emc'.tr, data: othersController.othersPreviewName['emcID']),
              TextWithTitle(title: 'product_no'.tr, data: othersController.othersPreviewName['productNo']),
              TextWithTitle(title: 'price'.tr, data: othersController.othersPreviewName['produtPrice']),
              TextWithTitle(title: 'color'.tr, data: 'on processing'),

            ],
          ),
        ),


      ],
    );
  }
}


