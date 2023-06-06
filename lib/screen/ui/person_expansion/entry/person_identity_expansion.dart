import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/multiple_dropdown_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../controller/search_controller/person_search_controller.dart';
import '../../../../model/person_model/person_post_model.dart';
import '../../../../model/person_model/personal_information_model.dart';

class PersonIdentityExpansion extends StatefulWidget {
  const PersonIdentityExpansion({Key? key}) : super(key: key);

  @override
  State<PersonIdentityExpansion> createState() =>
      _PersonIdentityExpansionState();
}

class _PersonIdentityExpansionState extends State<PersonIdentityExpansion> {
  final controller = Get.find<InfoEntryController>();
  final personController = Get.put(PersonSearchController());

  final prefs = Get.find<MyPrefs>();
  final regionallismList = [
    'old_dhaka'.tr,
    'chittagong'.tr,
    'barishal'.tr,
    'khulna'.tr,
    'mymensingh'.tr,
    'rajshahi'.tr,
    'rangpur'.tr,
    'sylhet'.tr,
    'noakhali'.tr
  ];

  int? val = 2;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: ExpansionTile(
        key: GlobalKey(),
        initiallyExpanded: controller.nextTileNumber.value == 2,
        collapsedBackgroundColor: deactivatedColor,
        title: Text('person_identity_info'.tr, style: GTheme.title),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text('des_circumcision'.tr, style: GTheme.subtitle),
              ),
              Expanded(
                flex: 2,
                child: ListTile(
                  title: Text('yes'.tr),
                  leading: Radio(
                    value: 1,
                    groupValue: val,
                    activeColor: primaryColor,
                    onChanged: (int? newValue) {
                      setState(() {
                        val = newValue;
                        controller.personPostModel.descriptionCircumcisionId =
                            newValue;
                        personController.personPreviewMap['des_circumcision'] =
                            'yes'.tr;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ListTile(
                  title: Text('no'.tr),
                  leading: Radio(
                    value: 2,
                    groupValue: val,
                    activeColor: primaryColor,
                    onChanged: (int? newValue) {
                      setState(() {
                        val = newValue;
                        controller.personPostModel.descriptionCircumcisionId =
                            newValue;
                        personController.personPreviewMap['des_circumcision'] =
                            'no'.tr;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('religion'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<Religions>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['religion'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['religion'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.religionList,
                      itemAsString: (Religions? religion) => prefs.language.val
                          ? religion!.religionName.toString()
                          : religion!.religionNameBn.toString(),
                      onChanged: (value) {
                        setState(() {
                          controller.personPostModel.religionId = value!.id;
                          // get preview value
                          personController.personPreviewMap['religion'] =
                              prefs.language.val
                                  ? value.religionName.toString()
                                  : value.religionNameBn.toString();
                        });
                      }),
                )
              ],
            ),
          ),
          DropdownWithTitle(
            title: 'blood_group'.tr,
            hintText: controller.personPostModel.bloodGroup ?? 'blood_group'.tr,
            dropdownList: const ['A', 'A+', 'B', 'B+', 'AB', 'AB+', 'O', 'O+'],
            saveValue: (value) {
              setState(() {
                controller.personPostModel.bloodGroup = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('occupation'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<Occupations>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController
                                    .personPreviewMap['occupation'] ==
                                ''
                            ? 'Select'
                            : personController.personPreviewMap['occupation'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.occupationsList,
                      itemAsString: (Occupations? data) => prefs.language.val
                          ? data!.name.toString()
                          : data!.nameBn.toString(),
                      onChanged: (value) {
                        setState(() {
                          controller.personPostModel.occupationId = value!.id;
                          // get preview value
                          personController.personPreviewMap['occupation'] =
                              prefs.language.val
                                  ? value.name.toString()
                                  : value.nameBn.toString();
                        });
                      }),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('marital_status'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<MaritalStatuses>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController
                                    .personPreviewMap['marital_status'] ==
                                ''
                            ? 'Select'
                            : personController
                                .personPreviewMap['marital_status'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.maritalStatusList,
                      itemAsString: (MaritalStatuses? data) =>
                          prefs.language.val
                              ? data!.name.toString()
                              : data!.nameBn.toString(),
                      onChanged: (value) {
                        setState(() {
                          controller.personPostModel.maritalStatusId =
                              value!.id;
                          // get preview value
                          personController.personPreviewMap['marital_status'] =
                              prefs.language.val
                                  ? value.name.toString()
                                  : value.nameBn.toString();
                        });
                      }),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('habit'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<Habits>.multiSelection(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['habit'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['habit'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.habitList,
                      itemAsString: (Habits? data) => prefs.language.val
                          ? data!.habitName.toString()
                          : data!.habitNameBn.toString(),
                      onChanged: (value) {
                        List<int?> list = [];
                        String habitbn = '';
                        String habiten = '';
                        for (var item in value) {
                          list.add(item.id);
                          habitbn += '${item.habitNameBn!}, ';
                          habiten += '${item.habitName!}, ';
                        }
                        controller.personPostModel.habitList = list;
                        // get preview value
                        setState(() {
                          personController.personPreviewMap['habit'] =
                              prefs.language.val ? habiten : habitbn;
                        });
                      }),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('regionalism'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<String>.multiSelection(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController
                                    .personPreviewMap['regionalism'] ==
                                ''
                            ? 'Select'
                            : personController.personPreviewMap['regionalism'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: regionallismList,
                      onChanged: (value) {
                        List<int?> list = [];
                        String regionalism = '';
                        for (var item in value) {
                          regionalism += '${item}, ';
                        }
                        controller.personPostModel.habitList = list;
                        // get preview value
                        setState(() {
                          personController.personPreviewMap['regionalism'] =
                              prefs.language.val ? regionalism : regionalism;
                        });
                      }),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('accent'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<Speeches>.multiSelection(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['accent'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['accent'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.speechList,
                      itemAsString: (Speeches? data) => prefs.language.val
                          ? data!.speechName.toString()
                          : data!.speechNameBn.toString(),
                      onChanged: (value) {
                        List<int?> list = [];
                        String accentbn = '';
                        String accenten = '';
                        for (var item in value) {
                          list.add(item.id);
                          accentbn += '${item.speechNameBn!}, ';
                          accenten += '${item.speechName!}, ';
                        }
                        controller.personPostModel.speechList = list;
                        // get preview value
                        setState(() {
                          personController.personPreviewMap['accent'] =
                              prefs.language.val ? accenten : accentbn;
                        });
                      }),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          customButton(context, 'next'.tr, () {
            setState(() {
            controller.nextTileNumber.value = 3;
            controller.showAddress.value = true;
            });
          })
        ],
      ),
    );
  }
}
