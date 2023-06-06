import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/info_entry_controller.dart';
import '../../../../../controller/search_controller/person_search_controller.dart';

class PersonDressDescriptionPreview extends StatelessWidget {
   PersonDressDescriptionPreview({Key? key}) : super(key: key);
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
            'dress_description'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(title: 'head'.tr, data: '${personController.personPreviewMap['head']} (${personController.personPreviewMap['head_cloth_color']})'),
              TextWithTitle(title: 'eye'.tr, data: '${ personController.personPreviewMap['in_eyes']} (${ personController.personPreviewMap['eye_color']})'),
              TextWithTitle(title: 'leg'.tr, data: '${ personController.personPreviewMap['in_leg']} (${ personController.personPreviewMap['leg_cloth_color']})'),
              TextWithTitle(title: 'throat'.tr, data: '${ personController.personPreviewMap['in_throat']} (${ personController.personPreviewMap['throat_cloth_color']})'),
              TextWithTitle(title: 'body'.tr, data: '${ personController.personPreviewMap['in_body']} (${ personController.personPreviewMap['body_cloth_color']})'),
              TextWithTitle(title: 'waist'.tr, data: '${ personController.personPreviewMap['in_waist']} (${ personController.personPreviewMap['waist_cloth_color']})'),
            ],
          ),
        ),
      ],
    );
  }
}
