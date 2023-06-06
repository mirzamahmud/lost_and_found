import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/datefield_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../model/others_model/type_by_doc_id_model.dart';

class DocumentInfoExpansion extends StatelessWidget {
  DocumentInfoExpansion({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final controller = Get.find<InfoEntryController>();
  final othersController = Get.find<OthersEntryController>();
  final prefs = Get.find<MyPrefs>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Form(
        key: _formKey,
        child: ExpansionTile(
          key: GlobalKey(),
          initiallyExpanded: controller.nextTileNumber.value == 1,
          collapsedBackgroundColor: deactivatedColor,
          title: Text('doc_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('doc_type'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<TypeByDocIdModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            othersController.othersPreviewName['docType'] ??
                                'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      validator: (value) {
                        if (value == null &&
                            othersController.othersPreviewName['docType'] ==
                                null) {
                          return 'required'.tr;
                        } else {
                          return null;
                        }
                      },
                      items: othersController.typeListByDoc,
                      itemAsString: (TypeByDocIdModel? type) =>
                          prefs.language.val
                              ? type!.categoryName.toString()
                              : type!.categoryNameBn.toString(),
                      onChanged: (value) {
                        controller.apiPostData['documentCategoryId'] =
                            value!.id;
                        othersController.othersPreviewName['docType'] =
                            (prefs.language.val
                                ? value.categoryName
                                : value.categoryNameBn)!;
                      }),
                )
              ],
            ),
            Obx(() => Column(
                  children: [
                    TextFormWithTitle(
                        title: 'doc_no'.tr,
                        initialValue: controller.apiPostData['documentNumber'],
                        hintText: 'doc_no'.tr,
                        validator: (value) {
                          if (value == null ||
                              controller.apiPostData['documentNumber'] ==
                                  null) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        onChanged: (val) {
                          controller.apiPostData['documentNumber'] = val;
                          // othersController.othersPreviewName['docNo'] = val;
                        }),
                    TextFormWithTitle(
                        title: 'amount'.tr,
                        initialValue: controller.apiPostData['amount'],
                        keyboard: TextInputType.number,
                        hintText: 'amount'.tr,
                        validator: (value) {
                          if (value == null ||
                              controller.apiPostData['amount'] == null) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        onChanged: (val) {
                          controller.apiPostData['amount'] = val;
                          // othersController.othersPreviewName['docAmmount'] = val;
                        }),
                    TextFormWithTitle(
                        title: 'details'.tr,
                        initialValue: controller.apiPostData['details'],
                        lines: 3,
                        hintText: 'details'.tr,
                        validator: (value) {
                          if (value == null ||
                              controller.apiPostData['details'] == null) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        onChanged: (val) {
                          controller.apiPostData['details'] = val;
                          // othersController.othersPreviewName['docDetails'] = val;
                        }),
                    DateFieldWithTitle(
                        title: 'issue_date'.tr,
                        hintText: controller.apiPostData['issueDate'] ??
                            'issue_date'.tr,
                        validator: (value) {
                          if (value == null ||
                              controller.apiPostData['issueDate'] == null) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        onChanged: (val) {
                          controller.apiPostData['issueDate'] = val;
                        }),
                    DateFieldWithTitle(
                        title: 'expire_date'.tr,
                        hintText: controller.apiPostData['expireDate'] ??
                            'expire_date'.tr,
                        validator: (value) {
                          if (value == null ||
                              controller.apiPostData['expireDate'] == null) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        onChanged: (val) {
                          controller.apiPostData['expireDate'] = val;
                        }),

                    // student testimonial
                    controller.apiPostData['documentCategoryId'] == 2
                        ? Column(
                            children: [
                              TextFormWithTitle(
                                  title: 'board'.tr,
                                  initialValue: controller.apiPostData['board'],
                                  hintText: 'board'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['board'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'institute_name'.tr,
                                  initialValue:
                                      controller.apiPostData['institute'],
                                  hintText: 'institute_name'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['institute'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'session'.tr,
                                  initialValue:
                                      controller.apiPostData['session'],
                                  hintText: 'session'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['session'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'result'.tr,
                                  initialValue:
                                      controller.apiPostData['result'],
                                  hintText: 'result'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['result'] = val;
                                  }),
                            ],
                          )
                        : const SizedBox(),

                    // student id card
                    controller.apiPostData['documentCategoryId'] == 5
                        ? Column(
                            children: [
                              TextFormWithTitle(
                                  title: 'student_name'.tr,
                                  initialValue:
                                      controller.apiPostData['student'],
                                  hintText: 'student_name'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['student'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'school_name'.tr,
                                  initialValue:
                                      controller.apiPostData['school'],
                                  hintText: 'school_name'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['school'] = val;
                                  }),
                            ],
                          )
                        : const SizedBox(),

                    // Work Place id card
                    controller.apiPostData['documentCategoryId'] == 6
                        ? Column(
                            children: [
                              TextFormWithTitle(
                                  title: 'institute_name'.tr,
                                  initialValue:
                                      controller.apiPostData['institute'],
                                  hintText: 'institute_name'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['institute'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'designation'.tr,
                                  initialValue:
                                      controller.apiPostData['designation'],
                                  hintText: 'designation'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['designation'] = val;
                                  }),
                            ],
                          )
                        : const SizedBox(),

                    // Bank paper
                    controller.apiPostData['documentCategoryId'] == 7
                        ? Column(
                            children: [
                              TextFormWithTitle(
                                  title: 'bank_name'.tr,
                                  initialValue: controller.apiPostData['bank'],
                                  hintText: 'bank_name'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['bank'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'branch_name'.tr,
                                  initialValue:
                                      controller.apiPostData['bankBranch'],
                                  hintText: 'branch_name'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['bankBranch'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'checkbook_number'.tr,
                                  initialValue:
                                      controller.apiPostData['chequebook'],
                                  hintText: 'checkbook_number'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['chequebook'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'checkbook_page_number'.tr,
                                  initialValue:
                                      controller.apiPostData['chequebookPage'],
                                  hintText: 'checkbook_page_number'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['chequebookPage'] =
                                        val;
                                  }),
                            ],
                          )
                        : const SizedBox(),

                    // Care paper
                    controller.apiPostData['documentCategoryId'] == 62
                        ? Column(
                            children: [
                              TextFormWithTitle(
                                  title: 'engine_number'.tr,
                                  initialValue:
                                      controller.apiPostData['enginNumber'],
                                  hintText: 'engine_number'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['enginNumber'] = val;
                                  }),
                              TextFormWithTitle(
                                  title: 'chassis_number'.tr,
                                  initialValue:
                                      controller.apiPostData['chesisNumber'],
                                  hintText: 'chassis_number'.tr,
                                  onChanged: (val) {
                                    controller.apiPostData['chesisNumber'] =
                                        val;
                                  }),
                            ],
                          )
                        : const SizedBox(),
                  ],
                )),
            const SizedBox(height: 20),
            customButton(context, 'next'.tr, () {
              if (_formKey.currentState!.validate()) {
                controller.nextTileNumber.value = 2;
                controller.showIdentity.value = true;
              }
            })
          ],
        ),
      ),
    );
  }
}
