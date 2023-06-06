import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/screen/widgets/color_dropdown.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../model/others_model/document_brand_by_doc_id.dart';
import '../../../model/others_model/type_by_doc_id_model.dart';

class GlassInfoExpansion extends StatelessWidget {
  GlassInfoExpansion({Key? key}) : super(key: key);
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
          title: Text('glass_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('glass_type'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<TypeByDocIdModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: othersController
                                .othersPreviewName['garmentsType'] ??
                            'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: othersController.typeListByDoc,
                      itemAsString: (TypeByDocIdModel? type) =>
                          prefs.language.val
                              ? type!.categoryName.toString()
                              : type!.categoryNameBn.toString(),
                      validator: (value) {
                        if (value == null &&
                            othersController
                                    .othersPreviewName['garmentsType'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['dropDownIDType'] = value!.id;
                        othersController.othersPreviewName['garmentsType'] =
                            (prefs.language.val
                                ? value.categoryName
                                : value.categoryNameBn)!;
                      }),
                )
              ],
            ),
            DropdownWithTitle(
              title: 'glass_shape'.tr,
              hintText:
                  othersController.othersPreviewName['glassShap'] ?? 'Select',
              dropdownList: const [
                'Oval face shape',
                'Heart-shaped face',
                'Oblong face shape',
                'Square face shape',
                'Diamond face shape',
                'Round face shape',
                'Base-down triangle'
              ],
              validator: (value) {
                if (value == null &&
                    othersController.othersPreviewName['glassShap'] == null) {
                  return 'required'.tr;
                }
                return null;
              },
              saveValue: (value) {
                othersController.othersPreviewName['glassShap'] = value!;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('brand'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<DocumentBrandByDocId>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        showClearButton: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: othersController
                                  .othersPreviewName['glassBrand'] ??
                              'Select',
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        items: othersController.docBrandListByDocId,
                        itemAsString: (DocumentBrandByDocId? type) =>
                            prefs.language.val
                                ? type!.brandName.toString()
                                : type!.brandNameBn.toString(),
                        validator: (value) {
                          if (value == null &&
                              othersController
                                      .othersPreviewName['glassBrand'] ==
                                  null) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        onChanged: (value) {
                          controller.apiPostData['brandTypeId'] = value!.id;
                          othersController.othersPreviewName['glassBrand'] =
                              (prefs.language.val
                                  ? value.brandName
                                  : value.brandNameBn)!;
                        }),
                  )
                ],
              ),
            ),
            ColorDropdown(
                colorHint: othersController.othersPreviewName['colorName'] ??
                    'color'.tr,
                changedFunction: (val) {
                  controller.apiPostData['colorId'] = val;
                  othersController.othersPreviewName['colorName'] =
                      (prefs.language.val ? val?.colorName : val?.colorNameBn)!;
                }),
            TextFormWithTitle(
                title: 'shape'.tr,
                initialValue: othersController.othersPreviewName['glassShap'],
                hintText: othersController.othersPreviewName['glassShap'] ??
                    'shape'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      othersController.othersPreviewName['glassShap'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['glassShap'] = val;
                }),
            TextFormWithTitle(
                title: 'model'.tr,
                initialValue: othersController.othersPreviewName['glassModel'],
                hintText: othersController.othersPreviewName['glassModel'] ??
                    'model'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      othersController.othersPreviewName['glassModel'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['model'] = val;
                  othersController.othersPreviewName['glassModel'] = val;
                }),
            TextFormWithTitle(
                title: 'serial_no'.tr,
                initialValue: othersController.othersPreviewName['glassSerial'],
                hintText: othersController.othersPreviewName['glassSerial'] ??
                    'serial_no'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      othersController.othersPreviewName['glassSerial'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['serialNo'] = val;
                  othersController.othersPreviewName['glassSerial'] = val;
                }),
            TextFormWithTitle(
                title: 'quantity'.tr,
                initialValue: othersController.othersPreviewName['glassAmount'],
                hintText: othersController.othersPreviewName['glassAmount'] ??
                    'quantity'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      othersController.othersPreviewName['glassAmount'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                keyboard: TextInputType.number,
                onChanged: (val) {
                  controller.apiPostData['quantity'] = val;
                  othersController.othersPreviewName['glassAmount'] = val;
                }),
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
