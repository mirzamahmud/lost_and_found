import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/country_widget.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/datefield_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../model/vehicle_model.dart';
import '../../widgets/seperate_textform_with_title.dart';

class VehicleEntryScreen extends StatefulWidget {
  VehicleEntryScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  State<VehicleEntryScreen> createState() => _VehicleEntryScreenState();
}

class _VehicleEntryScreenState extends State<VehicleEntryScreen> {
  final controller = Get.find<InfoEntryController>();
  final prefs = Get.find<MyPrefs>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal),
      child: Form(
        key: widget._formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('veh_type'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<VehicleTypes>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        showClearButton: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: controller
                                      .vehiclePreviewName['vehicleTypeName'] ?? 'Select',
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        validator: (value) {
                          if (value == null &&
                              controller.vehiclePreviewName['vehicleTypeName'] == null) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        items: controller.vehicleList.value.vehicleTypes,
                        itemAsString: (VehicleTypes? type) => prefs.language.val
                            ? type!.vehicleTypeName.toString()
                            : type!.vehicleTypeNameBn.toString(),
                        onChanged: (value) {
                          controller.apiPostData['vehicleTypeId'] = value!.id;
                          controller.vehiclePreviewName['vehicleTypeName'] =
                              prefs.language.val
                                  ? value.vehicleTypeName!
                                  : value.vehicleTypeNameBn!;
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('brand_name'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<VehicleModels>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        showClearButton: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: controller
                                      .vehiclePreviewName['vehicleBrandName'] ?? 'Select',
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        validator: (value) {
                          if (value == null &&
                              controller.vehiclePreviewName['vehicleBrandName'] == null) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        items: controller.vehicleList.value.vehicleModels,
                        itemAsString: (VehicleModels? brand) =>
                            prefs.language.val
                                ? brand!.modelName.toString()
                                : brand!.modelNameBn.toString(),
                        onChanged: (value) {
                          controller.apiPostData['vehicleBrandId'] = value!.id;
                          controller.vehiclePreviewName['vehicleBrandName'] =
                              prefs.language.val
                                  ? value.modelName!
                                  : value.modelNameBn!;
                        }),
                  )
                ],
              ),
            ),
            TextFormWithTitle(
                title: 'model'.tr,
                initialValue: controller.apiPostData['modelNo'] ?? '',
                hintText: 'model'.tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'required'.tr;
                  }
                  if (value.isEmpty &&
                      controller.apiPostData['modelNo'].toString().isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['modelNo'] = val;
                }),
            const SizedBox(height: 4),
            const Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: SizedBox(
                height: 150,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text('reg_no'.tr, style: GTheme.subtitle),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          DropdownSearch<MetropolitanAreas>(
                              mode: Mode.MENU,
                              showSearchBox: true,
                              dropdownButtonBuilder: (_) =>
                                  const Padding(padding: EdgeInsets.all(0)),
                              dropdownSearchDecoration: InputDecoration(
                                hintText:
                                    controller.apiPostData['regNoFirstPart'] ??
                                        'Select',
                                hintStyle: const TextStyle(color: blackColor),
                              ),
                              validator: (value) {
                                if (value == null &&
                                    controller.apiPostData['modelNo']
                                        .toString()
                                        .isEmpty) {
                                  return 'required'.tr;
                                }
                                return null;
                              },
                              items: controller
                                  .vehicleList.value.metropolitanAreas,
                              itemAsString: (MetropolitanAreas? reg) =>
                                  reg!.areaName.toString(),
                              onChanged: (value) {
                                controller.apiPostData['regNoFirstPart'] =
                                    value!.areaName.toString();
                              }),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            flex: 2,
                            child: DropdownSearch<RegistrationLevels>(
                                mode: Mode.MENU,
                                showSearchBox: true,
                                dropdownButtonBuilder: (_) =>
                                    const Padding(padding: EdgeInsets.all(0)),
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: controller
                                          .apiPostData['regNoSecondPart'] ??
                                      'Select',
                                  hintStyle: const TextStyle(color: blackColor),
                                ),
                                validator: (value) {
                                  if (value == null &&
                                      controller.apiPostData['modelNo']
                                          .toString()
                                          .isEmpty) {
                                    return 'required'.tr;
                                  }
                                  return null;
                                },
                                items: controller
                                    .vehicleList.value.registrationLevels,
                                itemAsString: (RegistrationLevels? reg) =>
                                    reg!.levelName.toString(),
                                onChanged: (value) {
                                  controller.apiPostData['regNoSecondPart'] =
                                      value!.levelName;
                                }),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              controller.apiPostData['regNoThiredPart'] = value;
                              controller.apiPostData['vehicleRegNo'] =
                                  '${controller.apiPostData['regNoFirstPart']} ${controller.apiPostData['regNoSecondPart']} $value';
                            },
                            initialValue:
                                controller.apiPostData['regNoThiredPart'] ?? '',
                            decoration: InputDecoration(
                                hintText: 'reg_no'.tr,
                                hintStyle: GTheme.body2,
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 10.0)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Divider(thickness: 2),
            SeparateFromFieldWithTitle(
                title: 'eng_no'.tr,
                controller: TextEditingController(text: controller.apiPostData['engineNo'] ?? ''),
                hintText: 'eng_no'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      controller.apiPostData['modelNo'].toString().isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['engineNo'] = val;
                }),
            SeparateFromFieldWithTitle(
                title: 'cha_no'.tr,
                controller: TextEditingController(text: controller.apiPostData['chasisNo'] ?? ''),
                hintText: 'cha_no'.tr,
                validator: (value) {
                  if (value!.isEmpty &&
                      controller.apiPostData['modelNo'].toString().isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['chasisNo'] = val;
                }),
            TextFormWithTitle(
                title: 'cc'.tr,
                initialValue: controller.apiPostData['ccNo'] ?? '',
                hintText: 'cc'.tr,
                keyboard: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty &&
                      controller.apiPostData['modelNo'].toString().isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['ccNo'] = val;
                }),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('made_in'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: CountryWidget(initialValue: 'BD'),
                  )
                ],
              ),
            ),
            DateFieldWithTitle(
                title: 'prod_date'.tr,
                hintText: controller.apiPostData['mfcDate'] ?? 'prod_date'.tr,
                onChanged: (val) {
                  controller.apiPostData['mfcDate'] = val;
                }),
            const SizedBox(height: 20),
            customButton(context, 'next'.tr, () {
              if (widget._formKey.currentState!.validate()) {
                setState(() {
                  controller.nextTileNumber.value = 2;
                  controller.showIdentity.value = true;
                });
                controller.getColorList();
              }
            })
          ],
        ),
      ),
    );
  }
}
