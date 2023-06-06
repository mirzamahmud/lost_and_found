import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/info_entry_controller.dart';
import '../../../../../controller/entry_controller/others_entry_controller.dart';

class DocInfoPreview extends StatelessWidget {
  DocInfoPreview({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final compController = Get.find<OthersEntryController>();
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
                child: Text('doc_info'.tr, style: GTheme.headline),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            TextWithTitle(
                title: 'doc_type'.tr,
                data: othersController.othersPreviewName['docType'] ?? ''),
            TextWithTitle(
                title: 'doc_no'.tr,
                data: controller.apiPostData['documentNumber'] ?? ''),
            TextWithTitle(
                title: 'amount'.tr,
                data: controller.apiPostData['amount'] ?? ''),
            TextWithTitle(
                title: 'details'.tr,
                data: controller.apiPostData['details'] ?? ''),
            TextWithTitle(
                title: 'issue_date'.tr,
                data: controller.apiPostData['issueDate'] ?? ''),
            TextWithTitle(
                title: 'expire_date'.tr,
                data: controller.apiPostData['expireDate'] ?? ''),
            controller.apiPostData['documentCategoryId'] == 2
                ? Column(
                    children: [
                      TextWithTitle(
                          title: 'board'.tr,
                          data: controller.apiPostData['board'] ?? ''),
                      TextWithTitle(
                          title: 'institute_name'.tr,
                          data: controller.apiPostData['institute'] ?? ''),
                      TextWithTitle(
                          title: 'session'.tr,
                          data: controller.apiPostData['session'] ?? ''),
                      TextWithTitle(
                          title: 'result'.tr,
                          data: controller.apiPostData['result'] ?? ''),
                    ],
                  )
                : const SizedBox(),
            controller.apiPostData['documentCategoryId'] == 5
                ? Column(
                    children: [
                      TextWithTitle(
                          title: 'student_name'.tr,
                          data: controller.apiPostData['student'] ?? ''),
                      TextWithTitle(
                          title: 'school_name'.tr,
                          data: controller.apiPostData['school'] ?? ''),
                    ],
                  )
                : const SizedBox(),
            controller.apiPostData['documentCategoryId'] == 6
                ? Column(
                    children: [
                      TextWithTitle(
                          title: 'institute_name'.tr,
                          data: controller.apiPostData['institute'] ?? ''),
                      TextWithTitle(
                          title: 'designation'.tr,
                          data: controller.apiPostData['designation'] ?? ''),
                    ],
                  )
                : const SizedBox(),
            controller.apiPostData['documentCategoryId'] == 7
                ? Column(
                    children: [
                      TextWithTitle(
                          title: 'bank_name'.tr,
                          data: controller.apiPostData['bank'] ?? ''),
                      TextWithTitle(
                          title: 'branch_name'.tr,
                          data: controller.apiPostData['bankBranch'] ?? ''),
                      TextWithTitle(
                          title: 'checkbook_number'.tr,
                          data: controller.apiPostData['chequebook'] ?? ''),
                      TextWithTitle(
                          title: 'checkbook_page_number'.tr,
                          data: controller.apiPostData['chequebookPage'] ?? ''),
                    ],
                  )
                : const SizedBox(),
            controller.apiPostData['documentCategoryId'] == 62
                ? Column(
                    children: [
                      TextWithTitle(
                          title: 'engine_number'.tr,
                          data: controller.apiPostData['enginNumber'] ?? ''),
                      TextWithTitle(
                          title: 'chassis_number'.tr,
                          data: controller.apiPostData['chesisNumber'] ?? ''),
                    ],
                  )
                : const SizedBox(),
          ]),
        ),
      ],
    );
  }
}
