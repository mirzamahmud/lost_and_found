import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/search_controller/person_search_controller.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

class PersonIdentityInfoPreview extends StatelessWidget {
  PersonIdentityInfoPreview({Key? key}) : super(key: key);

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
            'person_identity_info'.tr,
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
                  title: 'des_circumcision'.tr,
                  data: personController.personPreviewMap['des_circumcision']),
              TextWithTitle(
                  title: 'religion'.tr,
                  data: personController.personPreviewMap['religion']),
              TextWithTitle(
                  title: 'blood_group'.tr,
                  data: controller.personPostModel.bloodGroup ?? ''),
              TextWithTitle(
                  title: 'occupation'.tr,
                  data: personController.personPreviewMap['occupation']),
              TextWithTitle(
                  title: 'marital_status'.tr,
                  data: personController.personPreviewMap['marital_status']),
              TextWithTitle(
                  title: 'habit'.tr,
                  data: personController.personPreviewMap['habit']),
              TextWithTitle(title: 'regionalism'.tr, data: personController.personPreviewMap['regionalism']),
              TextWithTitle(title: 'accent'.tr, data:  personController.personPreviewMap['accent']),
            ],
          ),
        ),
      ],
    );
  }
}
