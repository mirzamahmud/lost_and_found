import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/info_entry_controller.dart';
import '../../../../../controller/search_controller/person_search_controller.dart';

class PersonAddressPreview extends StatelessWidget {
   PersonAddressPreview({Key? key}) : super(key: key);
   final controller = Get.find<InfoEntryController>();
  final personController = Get.find<PersonSearchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'person_address'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(title: 'country'.tr, data: controller.countryName.value),
              TextWithTitle(title: 'dist'.tr, data: personController.personPreviewMap['dist']),
              TextWithTitle(title: 'thana'.tr, data: personController.personPreviewMap['thana']),
              TextWithTitle(title: 'union'.tr, data: personController.personPreviewMap['union']),
              TextWithTitle(title: 'vill'.tr, data: personController.personPreviewMap['vill']),
              TextWithTitle(
                  title: 'address_details'.tr, data: controller.personPostModel.addressDetails ?? ''),
              TextWithTitle(
                  title: 'address_type'.tr, data: controller.personPostModel.addressType ?? ''),
              TextWithTitle(
                  title: 'one_line_address'.tr, data: controller.personPostModel.oneLineAddress ?? ''),
            ],
          ),
        ),
      ],
    );
  }
}
