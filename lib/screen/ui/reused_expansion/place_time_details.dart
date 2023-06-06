import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/model/district_model.dart';
import 'package:online_gd/model/thana_model.dart';
import 'package:online_gd/model/union_model.dart';
import 'package:online_gd/model/village_model.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/datefield_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/screen/widgets/time_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';
import '../../../util/constants.dart';

class PlaceTimeDetails extends StatelessWidget {
  PlaceTimeDetails({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final controller = Get.find<InfoEntryController>();
  final compController = Get.find<OthersEntryController>();
  final prefs = Get.find<MyPrefs>();

  @override
  Widget build(BuildContext context) {
    print('Map value: ${controller.vehiclePreviewName}');

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('dist'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<DistrictModel>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: controller.vehiclePreviewName['distName'] ?? 'Select',
                        hintStyle: const TextStyle(color: Colors.black),
                      ),
                      validator: (value) {
                        if (value == null &&
                            controller.vehiclePreviewName['distName'] == null) {
                          return 'required'.tr;
                        } else {
                          return null;
                        }
                      },
                      items: controller.districtList,
                      itemAsString: (DistrictModel? u) => prefs.language.val
                          ? u!.districtName.toString()
                          : u!.districtNameBn.toString(),
                      onChanged: (data) {
                        controller.districtId.value = data?.id ?? 0;
                        controller.getAllThana();
                        // to save preview name
                        controller.vehiclePreviewName['distName'] =
                            (prefs.language.val
                                ? data?.districtName
                                : data?.districtNameBn)!;

                        // Setting value to api post method
                        if (controller.productType.value == 'vehicle') {
                          controller.apiPostData['districtId'] = data!.id;
                        } else {
                          if (compController.documentId.value == 7) {
                            controller.apiPostData['districtId'] = data!.id;
                          } else {
                            controller.apiPostData['districtsId'] = data!.id;
                          }
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('thana'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<ThanaModel>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: controller.vehiclePreviewName['thanaName'] ?? 'Select',
                          hintStyle: const TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value == null &&
                              controller.vehiclePreviewName['thanaName'] ==
                                  null) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        items: controller.thanaList,
                        itemAsString: (ThanaModel? u) => prefs.language.val
                            ? u!.thanaName.toString()
                            : u!.thanaNameBn.toString(),
                        onChanged: (data) {
                          controller.thanaId.value = data?.id ?? 0;
                          controller.getAllUnion();
                          // to save preview name
                          controller.vehiclePreviewName['thanaName'] =
                              (prefs.language.val
                                  ? data?.thanaName
                                  : data?.thanaNameBn)!;

                          if (controller.productType.value == 'vehicle') {
                            controller.apiPostData['thanaId'] = data!.id;
                          } else {
                            if (compController.documentId.value == 7) {
                              controller.apiPostData['thanaId'] = data!.id;
                            } else {
                              controller.apiPostData['thanaId'] = data!.id;
                            }
                          }
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('union'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<UnionModel>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: controller.vehiclePreviewName['unionName'] ?? 'Select',
                          hintStyle: const TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value == null &&
                              controller.vehiclePreviewName['unionName'] ==
                                  null) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        items: controller.unionList,
                        itemAsString: (UnionModel? u) => prefs.language.val
                            ? u!.unionName.toString()
                            : u!.unionNameBn.toString(),
                        onChanged: (data) {
                          controller.unionId.value = data?.id ?? 0;
                          controller.getAllVillage();
                          // to save preview name
                          controller.vehiclePreviewName['unionName'] =
                              (prefs.language.val
                                  ? data?.unionName
                                  : data?.unionNameBn)!;

                          if (controller.productType.value == 'vehicle') {
                            controller.apiPostData['postOfficeId'] = data!.id;
                          } else {
                            if (compController.documentId.value == 7) {
                              controller.apiPostData['unionWard'] =
                                  data!.unionName;
                              controller.apiPostData['unionWardId'] = data.id;
                            } else {
                              controller.apiPostData['unionWard'] =
                                  data!.unionName;
                              controller.apiPostData['postOfficeId'] = data.id;
                              controller.vehiclePreviewName['unionName'] =
                                  (prefs.language.val
                                      ? data.unionName
                                      : data.unionNameBn)!;
                            }
                          }
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('vill'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<VillageModel>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: controller.vehiclePreviewName['villageName'] ?? 'Select',
                          hintStyle: const TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value == null &&
                              controller.vehiclePreviewName['villageName'] ==
                                  null) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        items: controller.villageList,
                        itemAsString: (VillageModel? u) => prefs.language.val
                            ? u!.villageName.toString()
                            : u!.villageNameBn.toString(),
                        onChanged: (data) {
                          // To set name
                          controller.vehiclePreviewName['villageName'] =
                              (prefs.language.val
                                  ? data?.villageName
                                  : data?.villageNameBn)!;
                          if (controller.productType.value == 'vehicle') {
                            controller.apiPostData['villegeId'] = data!.id;
                          } else {
                            if (compController.documentId.value == 7) {
                              controller.apiPostData['village'] =
                                  data!.villageName;
                              controller.apiPostData['villageName'] =
                                  data.villageName;
                              controller.apiPostData['villegeId'] = data.id;
                            } else {
                              controller.apiPostData['villegeId'] = data!.id;
                              controller.apiPostData['villageName'] =
                                  data.villageName;
                            }
                          }
                        }),
                  )
                ],
              ),
            ),
            TextFormWithTitle(
                title: 'place_info'.tr,
                hintText: 'place_info'.tr,
                initialValue:
                    controller.vehiclePreviewName['placeDetails'] ?? '',
                validator: (value) {
                  if (value!.isEmpty ||
                      controller.vehiclePreviewName['placeDetails'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  // to save preview name
                  controller.vehiclePreviewName['placeDetails'] = val;
                  if (controller.productType.value == 'vehicle') {
                    controller.apiPostData['placeDetails'] = val;
                  } else {
                    if (compController.documentId.value == 7) {
                      controller.apiPostData['addressDetails'] = val;
                    } else {
                      controller.apiPostData['addressDetails'] = val;
                    }
                  }
                }),
            DateFieldWithTitle(
                title: 'date'.tr,
                hintText: controller.apiPostData['lafDate'] == null
                    ? 'date'.tr
                    : Constants.formattedPreviewDate(
                        controller.apiPostData['lafDate'].toString()),
                validator: (value) {
                  if (value == null || value == '' &&
                      controller.apiPostData['lafDate'] == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.apiPostData['lafDate'] = val;
                }),
            TimeWithTitle(
                title: 'time'.tr,
                hintText: controller.apiPostData['lafTime'] == null
                    ? 'time'.tr
                    : Constants.formatTime(
                        controller.apiPostData['lafTime'].toString()),
                onChanged: (val) {
                  controller.apiPostData['lafTime'] = val;
                }),
            const SizedBox(height: 20),
            customButton(context, 'next'.tr, () {
              if (_formKey.currentState!.validate()) {
                controller.nextTileNumber.value = 5;
                controller.showFullDetails.value = true;
              }

              /* controller.nextTileNumber.value = 5;
              controller.showFullDetails.value = true;*/
            })
          ],
        ),
      ),
    );
  }
}
