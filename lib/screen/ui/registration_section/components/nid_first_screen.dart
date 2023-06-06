import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/model/district_model.dart';
import 'package:online_gd/model/thana_model.dart';
import 'package:online_gd/model/union_model.dart';
import 'package:online_gd/model/village_model.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../model/nid_model.dart';
import '../../../widgets/datefield_with_title.dart';
import '../../../widgets/only_number_textform.dart';

class NIDFirstScreen extends StatefulWidget {
  NIDFirstScreen({Key? key}) : super(key: key);

  @override
  State<NIDFirstScreen> createState() => _NIDFirstScreenState();
}

class _NIDFirstScreenState extends State<NIDFirstScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final addressController = Get.put(InfoEntryController());

  final controller = Get.find<RegistrationController>();

  final prefs = Get.find<MyPrefs>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        controller.nidInfo.value = PresentAddress();
        controller.isNidClicked.value = false;
        return Future.value(true);
      },
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OnlyNumberTextForm(
                title: 'nid_no'.tr,
                keyboard: TextInputType.number,
                isValidate: true,
                hintText: 'nid_no'.tr,
                onChanged: (val) {
                  controller.nidNumber.value = val;
                  controller.registrationData['NationalIdentityNo'] = val;
                }),
            DateFieldWithTitle(
              title: 'birth_date'.tr,
              hintText: 'birth'.tr,
              onChanged: (val) {
                controller.nidDate.value = val;
                controller.registrationData['dob'] = val;
              },
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : customButton(context, 'nid_check'.tr, () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        controller.nidCheckApi();
                      }),
              ),
            Obx(() => controller.isLoading.value ? const Center(
              child: CircularProgressIndicator(),
            ) : Column(
                  children: [
                    Text('nid_text'.tr, textAlign: TextAlign.center),
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
                                hintText: controller.isNidClicked.value
                                    ? controller.nidInfo.value.district
                                    : 'Select',
                                hintStyle: const TextStyle(color: Colors.black),
                              ),
                              items: addressController.districtList,
                              itemAsString: (DistrictModel? u) =>
                                  prefs.language.val
                                      ? u!.districtName.toString()
                                      : u!.districtNameBn.toString(),
                              onChanged: (data) {
                                addressController.districtId.value =
                                    data?.id ?? 0;
                                addressController.getAllThana();
                                if (data != null) {
                                  controller.registrationData['district'] =
                                      data.districtName!;
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
                                showClearButton: true,
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: controller.isNidClicked.value
                                      ? controller.nidInfo.value.upozila
                                      : 'Select',
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                ),
                                items: addressController.thanaList,
                                itemAsString: (ThanaModel? u) =>
                                    prefs.language.val
                                        ? u!.thanaName.toString()
                                        : u!.thanaNameBn.toString(),
                                onChanged: (data) {
                                  addressController.thanaId.value =
                                      data?.id ?? 0;
                                  addressController.getAllUnion();
                                  if (data != null) {
                                    controller.registrationData['thana'] =
                                        data.thanaName!;
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
                                showClearButton: true,
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: controller.isNidClicked.value
                                      ? controller.nidInfo.value.unionOrWard
                                      : 'Select',
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                ),
                                items: addressController.unionList,
                                itemAsString: (UnionModel? u) =>
                                    prefs.language.val
                                        ? u!.unionName.toString()
                                        : u!.unionNameBn.toString(),
                                onChanged: (data) {
                                  addressController.unionId.value =
                                      data?.id ?? 0;
                                  addressController.getAllVillage();
                                  if (data != null) {
                                    controller.registrationData['union'] =
                                        data.unionName!;
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
                                showClearButton: true,
                                dropdownSearchDecoration: InputDecoration(
                                  hintText: controller.isNidClicked.value
                                      ? controller
                                          .nidInfo.value.additionalVillageOrRoad
                                      : 'Select',
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                ),
                                items: addressController.villageList,
                                itemAsString: (VillageModel? u) =>
                                    prefs.language.val
                                        ? u!.villageName.toString()
                                        : u!.villageNameBn.toString(),
                                onChanged: (data) {
                                  addressController.villageId.value =
                                      data?.id ?? 0;
                                  if (data != null) {
                                    controller.registrationData['village'] =
                                        data.villageName!;
                                  }
                                }),
                          )
                        ],
                      ),
                    ),
                    TextFormWithTitle(
                        title: 'place_info'.tr,
                        hintText: controller.isNidClicked.value
                            ? controller.nidInfo.value.additionalMouzaOrMoholla
                            : 'place_info'.tr,
                        onChanged: (val) {
                          if (val.isNotEmpty) {
                            controller.registrationData['place'] = val;
                          }
                        }),
                    const SizedBox(height: 8),
                    TextFormWithTitle(
                        title: 'post_code'.tr,
                        hintText: controller.isNidClicked.value
                            ? controller.nidInfo.value.postalCode
                            : 'post_code'.tr,
                        onChanged: (val) {
                          if (val.isNotEmpty) {
                            controller.registrationData['post_code'] = val;
                          }
                        }),
                    const SizedBox(height: 20)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
