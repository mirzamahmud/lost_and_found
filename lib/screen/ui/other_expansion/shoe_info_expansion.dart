import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/color_dropdown.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';
import '../../../controller/entry_controller/others_entry_controller.dart';
import '../../../model/others_model/document_brand_by_doc_id.dart';
import '../../../model/others_model/type_by_doc_id_model.dart';
import '../../../service/my_prefs.dart';

class ShoeInfoExpansion extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ShoeInfoExpansion({Key? key}) : super(key: key);
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
          title: Text('shoe_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('shoe_type'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<TypeByDocIdModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: othersController.othersPreviewName['shoeType'] ?? 'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: othersController.typeListByDoc,
                      itemAsString: (TypeByDocIdModel? type) =>
                          prefs.language.val ? type!.categoryName.toString() : type!.categoryNameBn.toString(),
                      validator: (value) {
                        if (value == null && othersController.othersPreviewName['shoeType'] == null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['brandTypeId'] = value!.id;
                        othersController.othersPreviewName['shoeType'] =
                            (prefs.language.val ? value.categoryName : value.categoryNameBn)!;
                      }),
                )
              ],
            ),
            DropdownWithTitle(
              title: 'brand_type'.tr,
              hintText: othersController.othersPreviewName['shoeBrandType'] ?? 'Select',
              dropdownList: const ['Brand', 'Non-Brand'],
              validator: (value) {
                if (value == null && othersController.othersPreviewName['shoeBrandType'] == null) {
                  return 'required'.tr;
                }
                return null;
              },
              saveValue: (value) {
                othersController.othersPreviewName['shoeBrandType'] = value!;
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
                          hintText: othersController.othersPreviewName['shoeBrand'] ?? 'Select',
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        items: othersController.docBrandListByDocId,
                        itemAsString: (DocumentBrandByDocId? type) =>
                            prefs.language.val ? type!.brandName.toString() : type!.brandNameBn.toString(),
                        validator: (value) {
                          if (value == null && othersController.othersPreviewName['shoeBrand'] == null) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        onChanged: (value) {
                          controller.apiPostData['dropDownIDType'] = value!.id;
                          othersController.othersPreviewName['shoeBrand'] =
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
                initialValue: othersController.othersPreviewName['shoeModel'],
                hintText: 'model'.tr,
                validator: (value) {
                  if (value!.isEmpty || othersController.othersPreviewName['shoeModel'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['shoeModel'] = val;
                }),
            TextFormWithTitle(
                title: 'price'.tr,
                initialValue: othersController.othersPreviewName['shoePrice'],
                hintText: 'BDT',
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty || othersController.othersPreviewName['shoePrice'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['price'] = val;
                  othersController.othersPreviewName['shoePrice'] = val;
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
