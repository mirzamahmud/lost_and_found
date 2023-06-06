import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../model/others_model/comp_accessories_model.dart';
import '../../widgets/color_dropdown.dart';

class ProductExpansion extends StatelessWidget {
  ProductExpansion({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final controller = Get.find<InfoEntryController>();
  final compController = Get.find<OthersEntryController>();
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
          title: Text('product_info'.tr, style: GTheme.title),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('product_brand'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<CompAccessoriesModel>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        showClearButton: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: othersController
                                  .othersPreviewName['productBrand'] ??
                              'Select',
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        items: compController.accessoriesBrand,
                        itemAsString: (CompAccessoriesModel? type) =>
                            prefs.language.val
                                ? type!.brandName.toString()
                                : type!.brandNameBn.toString(),
                        validator: (value) {
                          if (value == null &&
                              othersController
                                      .othersPreviewName['productBrand'] ==
                                  null) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        onChanged: (value) {
                          controller.apiPostData['brandTypeId'] = value!.id;
                          othersController.othersPreviewName['productBrand'] =
                              (prefs.language.val
                                  ? value.brandName
                                  : value.brandNameBn)!;
                          //
                        }),
                  )
                ],
              ),
            ),
            TextFormWithTitle(
                title: 'model'.tr,
                initialValue:
                    othersController.othersPreviewName['productModel'],
                hintText: 'model'.tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['model'] = val;
                  othersController.othersPreviewName['productModel'] = val;
                }),
            TextFormWithTitle(
                title: 'service_tag'.tr,
                initialValue: othersController.othersPreviewName['serviceTag'],
                hintText: 'service_tag'.tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['serialNo'] = val;
                  othersController.othersPreviewName['serviceTag'] = val;
                }),
            TextFormWithTitle(
                title: 'emc'.tr,
                initialValue: othersController.othersPreviewName['emcID'],
                hintText: 'emc'.tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['emcProductId'] = val;
                  othersController.othersPreviewName['emcID'] = val;
                }),
            TextFormWithTitle(
                title: 'product_no'.tr,
                initialValue: othersController.othersPreviewName['productNo'],
                hintText: 'product_no'.tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['serviceCode'] = val;
                  othersController.othersPreviewName['productNo'] = val;
                }),
            TextFormWithTitle(
                title: 'price'.tr,
                initialValue: othersController.othersPreviewName['produtPrice'],
                hintText: 'BDT',
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['price'] = val;
                  othersController.othersPreviewName['produtPrice'] = val;
                }),
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
