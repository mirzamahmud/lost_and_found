import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/info_entry_controller.dart';
import '../../../../../controller/search_controller/person_search_controller.dart';

class PersonPhysicalDetailsPreview extends StatelessWidget {
  PersonPhysicalDetailsPreview({Key? key}) : super(key: key);
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
            'physical_details'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(
                  title: 'eye'.tr,
                  data: personController.personPreviewMap['eye']),
              TextWithTitle(
                  title: 'nose'.tr,
                  data: personController.personPreviewMap['nose']),
              TextWithTitle(
                  title: 'hair'.tr,
                  data: personController.personPreviewMap['hair']),
              TextWithTitle(
                  title: 'forehead'.tr,
                  data: personController.personPreviewMap['forehead']),
              TextWithTitle(
                  title: 'beard'.tr,
                  data: personController.personPreviewMap['beard']),
              TextWithTitle(
                  title: 'weight'.tr,
                  data: controller.personPostModel.weight != null
                      ? controller.personPostModel.weight.toString()
                      : ''),
              TextWithTitle(
                  title: 'physical_const'.tr,
                  data: personController.personPreviewMap['physical_const']),
              TextWithTitle(
                  title: 'face_shape'.tr,
                  data: personController.personPreviewMap['face_shape']),
              TextWithTitle(
                  title: 'chin'.tr,
                  data: personController.personPreviewMap['chin']),
              TextWithTitle(
                  title: 'skin_color'.tr,
                  data: personController.personPreviewMap['skin_color']),
              TextWithTitle(
                  title: 'ears'.tr,
                  data: personController.personPreviewMap['ears']),
              TextWithTitle(
                  title: 'neck'.tr,
                  data: personController.personPreviewMap['neck']),
              TextWithTitle(
                  title: 'height'.tr,
                  data:
                      '${personController.personPreviewMap['height']} : ${personController.personPreviewMap['inches']}'),
              TextWithTitle(
                  title: 'birthmark'.tr,
                  data: personController.personPreviewMap['birthmark']),
              TextWithTitle(
                  title: 'des_teeth'.tr,
                  data: personController.personPreviewMap['des_teeth']),
              TextWithTitle(
                  title: 'special_physical_des'.tr,
                  data: personController
                      .personPreviewMap['special_physical_des']),
              TextWithTitle(
                  title: 'visible_tattoo'.tr,
                  data: controller.personPostModel.visibleTatto ?? ''),
              TextWithTitle(
                  title: 'other_identification'.tr,
                  data: controller.personPostModel.otherIdentityfyMark ?? ''),
            ],
          ),
        ),
      ],
    );
  }
}
