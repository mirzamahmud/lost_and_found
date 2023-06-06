import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/country_widget.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../controller/search_controller/person_search_controller.dart';
import '../../../../model/district_model.dart';
import '../../../../model/thana_model.dart';
import '../../../../model/union_model.dart';
import '../../../../model/village_model.dart';

class PersonAddressExpansion extends StatelessWidget {
  PersonAddressExpansion({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final personController = Get.put(PersonSearchController());
  final prefs = Get.find<MyPrefs>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: ExpansionTile(
        key: GlobalKey(),
        initiallyExpanded: controller.nextTileNumber.value == 3,
        collapsedBackgroundColor: deactivatedColor,
        title: Text('person_address'.tr, style: GTheme.title),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('country'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: CountryWidget(initialValue: 'BD'),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Obx(() => controller.countryName.value.contains('Bangladesh')
              ? Column(
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
                              showClearButton: true,
                              dropdownSearchDecoration: InputDecoration(
                                hintText: personController.personPreviewMap['dist'] == '' ? 'Select' : personController.personPreviewMap['dist'],
                                hintStyle: const TextStyle(color: Colors.black),
                              ),
                              validator: (value) {
                                if (value == null) {
                                  return 'required'.tr;
                                } else {
                                  return null;
                                }
                              },
                              items: controller.districtList,
                              itemAsString: (DistrictModel? u) =>
                                  prefs.language.val
                                      ? u!.districtName.toString()
                                      : u!.districtNameBn.toString(),
                              onChanged: (data) {
                                controller.districtId.value = data?.id ?? 0;
                                controller.getAllThana();

                                controller.personPostModel.manDistrictId =
                                    data!.id;
                                //get preview  screen value
                                personController.personPreviewMap['dist'] =
                                (prefs.language.val
                                    ? data.districtName.toString()
                                    : data.districtNameBn.toString());
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
                                showClearButton: true,
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: personController.personPreviewMap['thana'] == '' ? 'Select' : personController.personPreviewMap['thana'],
                                  hintStyle: const TextStyle(color: Colors.black),
                                ),
                                validator: (value) {
                                  if (value == null) {
                                    return 'required'.tr;
                                  } else {
                                    return null;
                                  }
                                },
                                items: controller.thanaList,
                                itemAsString: (ThanaModel? u) =>
                                    prefs.language.val
                                        ? u!.thanaName.toString()
                                        : u!.thanaNameBn.toString(),
                                onChanged: (data) {
                                  controller.thanaId.value = data?.id ?? 0;
                                  controller.getAllUnion();
                                  controller.personPostModel.manThanaId =
                                      data!.id;
                                  //get preview  screen value
                                  personController.personPreviewMap['thana'] = prefs.language.val
                                      ? data.thanaName.toString()
                                      : data.thanaNameBn.toString();
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
                                showClearButton: true,
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: personController.personPreviewMap['union'] == '' ? 'Select' : personController.personPreviewMap['union'],
                                  hintStyle: const TextStyle(color: Colors.black),
                                ),
                                validator: (value) {
                                  if (value == null) {
                                    return 'required'.tr;
                                  } else {
                                    return null;
                                  }
                                },
                                items: controller.unionList,
                                itemAsString: (UnionModel? u) =>
                                    prefs.language.val
                                        ? u!.unionName.toString()
                                        : u!.unionNameBn.toString(),
                                onChanged: (data) {
                                  controller.unionId.value = data?.id ?? 0;
                                  controller.getAllVillage();
                                  //get preview  screen value
                                  personController.personPreviewMap['union'] =
                                      (prefs.language.val
                                          ? data?.unionName.toString()
                                          : data?.unionNameBn.toString())!;
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
                                showClearButton: true,
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: personController.personPreviewMap['vill'] == '' ? 'Select' : personController.personPreviewMap['vill'],
                                  hintStyle: const TextStyle(color: Colors.black),
                                ),
                                validator: (value) {
                                  if (value == null) {
                                    return 'required'.tr;
                                  } else {
                                    return null;
                                  }
                                },
                                items: controller.villageList,
                                itemAsString: (VillageModel? u) =>
                                    prefs.language.val
                                        ? u!.villageName.toString()
                                        : u!.villageNameBn.toString(),
                                onChanged: (data) {
                                  //get preview  screen value
                                  personController.personPreviewMap['vill'] =
                                      (prefs.language.val
                                          ? data?.villageName.toString()
                                          : data?.villageNameBn.toString())!;
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox()),
          TextFormWithTitle(
              title: 'address_details'.tr,
              lines: 2,
              hintText: controller.personPostModel.addressDetails ?? 'address_details'.tr,
              
              onChanged: (val) {
                controller.personPostModel.addressDetails = val;
              }),
          DropdownWithTitle(
            title: 'address_type'.tr,
            hintText: controller.personPostModel.addressType ?? '',
            dropdownList: [
              'other_source'.tr,
              'possible_source'.tr,
              'present_source'.tr,
              'permanent_source'.tr,
              'work_source'.tr,
              'others'.tr
            ],
            saveValue: (value) {
              controller.personPostModel.addressType = value;
            },
          ),
          TextFormWithTitle(
              title: 'one_line_address'.tr,
              lines: 2,
              initialValue: controller.personPostModel.oneLineAddress ?? '',
              hintText: 'one_line_address'.tr,
              
              onChanged: (val) {
                controller.personPostModel.oneLineAddress = val;
              }),
          const SizedBox(height: 20),
          customButton(context, 'next'.tr, () {
            controller.nextTileNumber.value = 4;
            controller.showPhysical.value = true;
          })
        ],
      ),
    );
  }
}
