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

import '../../../model/others_model/type_by_doc_id_model.dart';

class BagInfoExpansion extends StatelessWidget {
  BagInfoExpansion({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final othersController = Get.find<OthersEntryController>();
  final prefs = Get.find<MyPrefs>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          title: Text('bag_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('bag_type'.tr, style: GTheme.subtitle),
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
                            othersController.othersPreviewName['bagType'] ??
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
                            othersController.othersPreviewName['bagType'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['dropDownIDType'] = value!.id;
                        othersController.othersPreviewName['bagType'] =
                            (prefs.language.val
                                ? value.categoryName
                                : value.categoryNameBn)!;
                      }),
                )
              ],
            ),
            ColorDropdown(
                colorHint: othersController.othersPreviewName['colorName'] ??
                    'color'.tr,
                changedFunction: (color) {
                  controller.apiPostData['colorId'] = color!.id;
                  othersController.othersPreviewName['colorName'] =
                      (prefs.language.val
                          ? color.colorName
                          : color.colorNameBn)!;
                }),
            TextFormWithTitle(
                title: 'size'.tr,
                initialValue: othersController.othersPreviewName['shap'],
                hintText: 'inch',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['inch'] = val;
                  othersController.othersPreviewName['shap'] = val;
                }),
            TextFormWithTitle(
                title: 'price'.tr,
                initialValue: othersController.othersPreviewName['price'],
                hintText: 'BDT',
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['price'] = val;
                }),
            TextFormWithTitle(
                title: 'amount'.tr,
                initialValue: othersController.othersPreviewName['amount'],
                hintText: 'amount'.tr,
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['quantity'] = val;
                  othersController.othersPreviewName['amount'] = val;
                }),
            TextFormWithTitle(
                title: 'model'.tr,
                initialValue: othersController.othersPreviewName['model'],
                hintText: 'model'.tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['model'] = val;
                  othersController.othersPreviewName['model'] = val;
                }),
            TextFormWithTitle(
                title: 'serial_no'.tr,
                initialValue: othersController.othersPreviewName['serialNo'],
                hintText: 'serial_no'.tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['serialNo'] = val;
                  othersController.othersPreviewName['serialNo'] = val;
                }),
            // todo to check previous app
            /* TextFormWithTitle(
                title: 'quantity'.tr,
                initialValue: othersController.othersPreviewName['quantity'],
                hintText: 'quantity'.tr,

                onChanged: (val) {
                  othersController.othersPreviewName['quantity'] = val;
                }),*/
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
