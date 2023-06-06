import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../model/others_model/document_brand_by_doc_id.dart';
import '../../../model/others_model/type_by_doc_id_model.dart';
import '../../widgets/color_dropdown.dart';

class KeyInfoExpansion extends StatelessWidget {
  KeyInfoExpansion({Key? key}) : super(key: key);
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
          title: Text('key_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('key_type'.tr, style: GTheme.subtitle),
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
                            othersController.othersPreviewName['keyType'] ??
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
                            othersController.othersPreviewName['keyAmmount'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['dropDownIDType'] = value!.id;
                        othersController.othersPreviewName['keyType'] =
                            (prefs.language.val
                                ? value.categoryName
                                : value.categoryNameBn)!;
                      }),
                )
              ],
            ),
            ColorDropdown(
              colorHint:
                  othersController.othersPreviewName['colorName'] ?? 'color'.tr,
              changedFunction: (color) {
                controller.apiPostData['colorId'] = color!.id;
                othersController.othersPreviewName['colorName'] =
                    (prefs.language.val ? color.colorName : color.colorNameBn)!;
              },
            ),
            TextFormWithTitle(
                title: 'key_description'.tr,
                initialValue: othersController.othersPreviewName['keyDetails'],
                hintText: 'key_description'.tr,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['keyAmmount'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['keyDetails'] = val;
                }),
            TextFormWithTitle(
                title: 'size'.tr,
                initialValue: othersController.othersPreviewName['keyShap'],
                hintText: 'size'.tr,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['keyAmmount'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['keyShap'] = val;
                }),
            TextFormWithTitle(
                title: 'quantity'.tr,
                initialValue: othersController.othersPreviewName['keyAmmount'],
                hintText: 'quantity'.tr,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['keyAmmount'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['keyAmmount'] = val;
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
