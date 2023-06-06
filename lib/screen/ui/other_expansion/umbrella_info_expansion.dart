import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../controller/entry_controller/others_entry_controller.dart';
import '../../../model/others_model/document_brand_by_doc_id.dart';
import '../../../model/others_model/type_by_doc_id_model.dart';
import '../../../service/my_prefs.dart';
import '../../widgets/color_dropdown.dart';

class UmbrellaInfoExpansion extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  UmbrellaInfoExpansion({Key? key}) : super(key: key);
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
          title: Text('umbrella_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('umbrella_info'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<TypeByDocIdModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: othersController.othersPreviewName['umbrellaInformation'] ?? 'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      validator: (value) {
                        if (value == null && othersController.othersPreviewName['umbrellaInformation'] == null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      items: othersController.typeListByDoc,
                      itemAsString: (TypeByDocIdModel? type) =>
                          prefs.language.val ? type!.categoryName.toString() : type!.categoryNameBn.toString(),
                      onChanged: (value) {
                        controller.apiPostData['dropDownIDType'] = value!.id;
                        othersController.othersPreviewName['umbrellaInformation'] =
                            (prefs.language.val ? value.categoryName : value.categoryNameBn)!;
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
                          hintText: othersController.othersPreviewName['umbrellaBrand'] ?? 'Select',
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        items: othersController.docBrandListByDocId,
                        itemAsString: (DocumentBrandByDocId? type) =>
                            prefs.language.val ? type!.brandName.toString() : type!.brandNameBn.toString(),
                        validator: (value) {
                          if (value == null && othersController.othersPreviewName['umbrellaBrand'] == null) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        onChanged: (value) {
                          controller.apiPostData['brandTypeId'] = value!.id;
                          othersController.othersPreviewName['umbrellaBrand'] =
                              (prefs.language.val ? value.brandName : value.brandNameBn)!;
                        }),
                  )
                ],
              ),
            ),
            ColorDropdown(
                colorHint: othersController.othersPreviewName['colorName'] ?? 'color'.tr,
                changedFunction: (value) {
                  controller.apiPostData['colorId'] = value!.id;

                  othersController.othersPreviewName['colorName'] =
                      (prefs.language.val ? value.colorName : value.colorNameBn)!;
                }),
            TextFormWithTitle(
                title: 'model'.tr,
                initialValue: othersController.othersPreviewName['umbrellaModel'],
                hintText: 'model'.tr,
                validator: (value) {
                  if (value!.isEmpty || othersController.othersPreviewName['umbrellaModel'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['umbrellaModel'] = val;
                }),
            TextFormWithTitle(
                title: 'shape'.tr,
                initialValue: othersController.othersPreviewName['umbrellaShap'],
                hintText: 'shape'.tr,
                validator: (value) {
                  if (value!.isEmpty || othersController.othersPreviewName['umbrellaShap'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['umbrellaShap'] = val;
                }),
            TextFormWithTitle(
                title: 'umbrella_spec'.tr,
                initialValue: othersController.othersPreviewName['umbrellaSpecification'],
                hintText: 'umbrella_spec'.tr,
                validator: (value) {
                  if (value!.isEmpty || othersController.othersPreviewName['umbrellaSpecification'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['umbrellaSpecification'] = val;
                }),
            TextFormWithTitle(
                title: 'price'.tr,
                initialValue: othersController.othersPreviewName['umbrellaPrice'],
                hintText: 'price'.tr,
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty || othersController.othersPreviewName['umbrellaPrice'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['umbrellaPrice'] = val;
                }),
            TextFormWithTitle(
                title: 'quantity'.tr,
                initialValue: othersController.othersPreviewName['umbrellaAmmount'],
                hintText: 'quantity'.tr,
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty || othersController.othersPreviewName['umbrellaAmmount'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['umbrellaAmmount'] = val;
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
