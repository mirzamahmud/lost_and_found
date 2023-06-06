import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/search_controller/person_search_controller.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

class PersonBasicInfoPreview extends StatelessWidget {
  PersonBasicInfoPreview({Key? key}) : super(key: key);
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
            'person_info'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(title: 'relation'.tr, data: personController.personPreviewMap['relation']),
              TextWithTitle(title: 'lost_name'.tr, data: controller.personPostModel.name ?? ''),
              TextWithTitle(title: 'age'.tr, data: controller.personPostModel.aproxAge ?? ''),
              TextWithTitle(title: 'gender'.tr, data:  personController.personPreviewMap['gender']),
              TextWithTitle(title: 'mental_handicap'.tr, data: 'no'.tr),
              TextWithTitle(title: 'father_name'.tr, data: controller.personPostModel.fatherName ?? ''),
              TextWithTitle(title: 'mother_name'.tr, data: controller.personPostModel.motherName ?? ''),
              TextWithTitle(title: 'spouse_name'.tr, data: controller.personPostModel.spouseName ?? ''),
              TextWithTitle(title: 'doc_type'.tr, data: personController.personPreviewMap['doc_type']),
              TextWithTitle(title: 'doc_no'.tr, data: personController.personPreviewMap['doc_no']),
              TextWithTitle(title: 'number_type'.tr, data: personController.personPreviewMap['number_type']),
              TextWithTitle(title: 'number'.tr, data: controller.personPostModel.number ?? ''),
            ],
          ),
        ),
      ],
    );
  }
}
