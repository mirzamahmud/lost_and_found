import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/screen/widgets/color_dropdown.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../model/others_model/document_brand_by_doc_id.dart';
import '../../../model/others_model/type_by_doc_id_model.dart';

class JeweleryInfoExpansion extends StatelessWidget {
  JeweleryInfoExpansion({Key? key}) : super(key: key);
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
          title: Text('jewelery_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('jew_type'.tr, style: GTheme.subtitle),
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
                                .othersPreviewName['jeweleryType'] ??
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
                                    .othersPreviewName['jeweleryType'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['dropDownIDType'] = value!.id;
                        othersController.othersPreviewName['jeweleryType'] =
                            (prefs.language.val
                                ? value.categoryName
                                : value.categoryNameBn)!;
                      }),
                )
              ],
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
                                  .othersPreviewName['jeweleryBrand'] ??
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
                                      .othersPreviewName['jeweleryType'] ==
                                  null) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        onChanged: (value) {
                          controller.apiPostData['brandTypeId'] = value!.id;
                          othersController.othersPreviewName['jeweleryBrand'] =
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
                changedFunction: (value) {
                  controller.apiPostData['colorId'] = value!.id;
                  othersController.othersPreviewName['colorName'] =
                      (prefs.language.val
                          ? value.colorName
                          : value.colorNameBn)!;
                }),
            TextFormWithTitle(
                title: 'price'.tr,
                initialValue:
                    othersController.othersPreviewName['jeweleryPrice'],
                hintText: 'BDT',
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty &&
                      othersController.othersPreviewName['jeweleryPrice'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['price'] = val;
                  othersController.othersPreviewName['jeweleryPrice'] = val;
                }),
            TextFormWithTitle(
                title: 'model'.tr,
                initialValue:
                    othersController.othersPreviewName['jeweleryModel'],
                hintText: 'model'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      othersController.othersPreviewName['jeweleryModel'] ==
                          null) {
                    return 'required'.tr;
                  }

                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['model'] = val;
                  othersController.othersPreviewName['jeweleryModel'] = val;
                }),
            TextFormWithTitle(
                title: 'weight'.tr,
                initialValue:
                    othersController.othersPreviewName['jeweleryWeight'],
                hintText: 'weight'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      othersController.othersPreviewName['jeweleryWeight'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['jeweleryWeight'] = val;
                }),
            TextFormWithTitle(
                title: 'karat'.tr,
                initialValue:
                    othersController.othersPreviewName['jeweleryKarat'],
                hintText: 'karat'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      othersController.othersPreviewName['jeweleryKarat'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['jeweleryKarat'] = val;
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
