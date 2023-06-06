import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/color_dropdown.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_options.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../model/others_model/brand_by_doc_model.dart';
import '../../../model/others_model/os_model.dart';
import '../../../model/others_model/type_by_doc_id_model.dart';

class MobileInfoExpansion extends StatelessWidget {
  MobileInfoExpansion({Key? key}) : super(key: key);
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
          title: Text('mobile_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('mobile_type'.tr, style: GTheme.subtitle),
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
                            othersController.othersPreviewName['mobileType'] ??
                                'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: compController.typeListByDoc,
                      itemAsString: (TypeByDocIdModel? type) =>
                          prefs.language.val
                              ? type!.categoryName.toString()
                              : type!.categoryNameBn.toString(),
                      validator: (value) {
                        if (value == null &&
                            othersController.othersPreviewName['mobileType'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['dropDownIDType'] = value!.id;
                        othersController.othersPreviewName['mobileType'] =
                            (prefs.language.val
                                ? value.categoryName
                                : value.categoryNameBn)!;
                        //
                      }),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('brand_name'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<BrandByDocModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: othersController
                                .othersPreviewName['mobileBrandName'] ??
                            'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: compController.brandByDocList,
                      itemAsString: (BrandByDocModel? type) =>
                          prefs.language.val
                              ? type!.brandName.toString()
                              : type!.brandNameBn.toString(),
                      validator: (value) {
                        if (value == null &&
                            othersController
                                    .othersPreviewName['mobileBrandName'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['brandTypeId'] = value!.id;
                        othersController.othersPreviewName['mobileBrandName'] =
                            (prefs.language.val
                                ? value.brandName
                                : value.brandNameBn)!;
                        //
                      }),
                )
              ],
            ),
            TextFormWithTitle(
                title: 'model'.tr,
                initialValue: othersController.othersPreviewName['mobileModel'],
                hintText: 'model'.tr,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['mobileModel'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['mobileModel'] = val;
                  othersController.othersPreviewName['mobileModel'] = val;
                }),
            TextFormWithTitle(
                title: 'mac'.tr,
                initialValue: othersController.othersPreviewName['macAddress'],
                hintText: 'mac'.tr,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['macAddress'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['macAddress'] = val;
                  othersController.othersPreviewName['macAddress'] = val;
                }),
            TextFormWithTitle(
                title: 'serial_no'.tr,
                initialValue:
                    othersController.othersPreviewName['mobileSerial'],
                hintText: 'serial_no'.tr,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['mobileSerial'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['serial'] = val;
                  othersController.othersPreviewName['mobileSerial'] = val;
                }),
            TextFormWithTitle(
                title: 'amount'.tr,
                initialValue:
                    othersController.othersPreviewName['mobileAmmount'],
                hintText: 'amount'.tr,
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['mobileAmmount'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['quantity'] = val;
                  othersController.othersPreviewName['mobileAmmount'] = val;
                }),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('os'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<OsModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: othersController
                                .othersPreviewName['mobileOperatinSystem'] ??
                            'Select',
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: compController.osTypeList,
                      itemAsString: (OsModel? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      validator: (value) {
                        if (value == null &&
                            othersController
                                    .othersPreviewName['mobileBrandName'] ==
                                null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.apiPostData['operatingSystem'] = value!.id;
                        othersController
                                .othersPreviewName['mobileOperatinSystem'] =
                            (prefs.language.val
                                ? value.typeName
                                : value.typeNameBn)!;
                        //
                      }),
                )
              ],
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
                title: 'imei'.tr,
                keyboard: TextInputType.number,
                initialValue: othersController.othersPreviewName['mobileIME'],
                hintText: 'IMEI',
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['screenShap'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['iME'] = val;
                  othersController.othersPreviewName['mobileIME'] = val;
                }),
            TextFormWithTitle(
                title: 'screen_size'.tr,
                initialValue: othersController.othersPreviewName['screenShap'],
                hintText: 'inch',
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['screenShap'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  othersController.othersPreviewName['screenShap'] = val;
                }),
            TextFormWithTitle(
                title: 'battery'.tr,
                initialValue:
                    othersController.othersPreviewName['mobileBattery'],
                hintText: 'mAh',
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['mobileBattery'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['battery'] = val;
                  othersController.othersPreviewName['mobileBattery'] = val;
                }),
            TextFormWithTitle(
                title: 'price'.tr,
                initialValue: othersController.othersPreviewName['mobilePrice'],
                hintText: 'BDT',
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty ||
                      othersController.othersPreviewName['mobilePrice'] ==
                          null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['price'] = val;
                  othersController.othersPreviewName['mobilePrice'] = val;
                }),
            TextFormWithOptions(
              title: 'ram'.tr,
              hintText: 'ram'.tr,
              initialValue: othersController.othersPreviewName['mobileRam'],
              onChanged: (val) {
                controller.apiPostData['rAM'] = val;
                othersController.othersPreviewName['mobileRam'] = val;
              },
              dropdownList: const ['MB', 'GB', 'TB'],
              saveValue: (val) {
                controller.apiPostData['rAMSize'] = val;
              },
            ),
            TextFormWithOptions(
              title: 'rom'.tr,
              hintText: 'rom'.tr,
              initialValue: othersController.othersPreviewName['mobileRom'],
              onChanged: (val) {
                controller.apiPostData['rOM'] = val;
                othersController.othersPreviewName['mobileRom'] = val;
              },
              dropdownList: const ['MB', 'GB', 'TB'],
              saveValue: (val) {
                controller.apiPostData['rOMSize'] = val;
              },
            ),
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
