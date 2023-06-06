import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/search_controller/person_search_controller.dart';
import 'package:online_gd/model/person_model/man_search_model.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_options.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../model/person_model/person_post_model.dart';
import '../../../../model/person_model/personal_information_model.dart';

class PersonPrimaryExpansion extends StatelessWidget {
  PersonPrimaryExpansion({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final personController = Get.find<PersonSearchController>();
  final prefs = Get.find<MyPrefs>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int val = 2;

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
          title: Text('person_info'.tr, style: GTheme.title),
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('relation'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<RelationTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController.personPreviewMap['relation'] == '' ? 'Select' : personController.personPreviewMap['relation'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      validator: (value) {
                        if (value == null &&
                            personController.personPreviewMap['relation']
                                .toString()
                                .isEmpty) {
                          return 'required'.tr;
                        } else {
                          return null;
                        }
                      },
                      items: controller.relationList,
                      itemAsString: (RelationTypes? type) => prefs.language.val
                          ? type!.relationName.toString()
                          : type!.relationNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.relationTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['relation'] =
                            (prefs.language.val
                                ? value.relationName
                                : value.relationNameBn)!;
                      }),
                )
              ],
            ),
            TextFormWithTitle(
                title: 'lost_name'.tr,
                capitalization: TextCapitalization.words,
                
                initialValue: controller.personPostModel.name,
                hintText: 'lost_name'.tr,
                validator: (val) {
                  if (val!.isEmpty  && controller.personPostModel.name == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.personPostModel.name = val;
                }),
            TextFormWithOptions(
                title: 'age'.tr,
              initialValue: controller.personPostModel.aproxAge ?? '',
              hintText: 'age'.tr,
              onChanged: (val) {
                controller.personPostModel.aproxAge = val;
                personController.personPreviewMap['age'] = val;
              },
                keyboard: TextInputType.number,
              dropHintText: personController.personPreviewMap['ageYear'] == '' ? 'Select' : personController.personPreviewMap['ageYear'],
                dropdownList: ['year'.tr, 'month'.tr, 'day'.tr],
                saveValue: (val) {
                  personController.personPreviewMap['ageYear'] = val ?? '';
                },
                ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('gender'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<Genders>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        showClearButton: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: personController.personPreviewMap['gender'] == '' ?'Select' : personController.personPreviewMap['gender'],
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        validator: (value) {
                          if (value == null &&
                              personController.personPreviewMap['gender']
                                  .toString()
                                  .isEmpty) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        items: controller.genderList,
                        itemAsString: (Genders? type) => prefs.language.val
                            ? type!.genderName.toString()
                            : type!.genderNameBn.toString(),
                        onChanged: (value) {
                          controller.personPostModel.genderId = value!.id;
                          //get preview  screen value
                          personController.personPreviewMap['gender'] =
                          (prefs.language.val
                              ? value.genderName
                              : value.genderNameBn)!;
                        }),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text('mental_handicap'.tr, style: GTheme.subtitle),
                ),
                Expanded(
                  flex: 2,
                  child: ListTile(
                    title: Text('yes'.tr),
                    leading: Radio(
                      value: 1,
                      groupValue: val,
                      activeColor: primaryColor,
                      onChanged: (value) {
                        personController.personPreviewMap['mental_handicap']= 'yes'.tr;
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
                      onChanged: (value) {
                        personController.personPreviewMap['mental_handicap']= 'no'.tr;

                      },
                    ),
                  ),
                ),
              ],
            ),
            TextFormWithTitle(
                title: 'father_name'.tr,
                capitalization: TextCapitalization.words,
                hintText: controller.personPostModel.fatherName ?? 'father_name'.tr,
                validator: (val) {
                  if (val!.isEmpty  && controller.personPostModel.fatherName == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                
                onChanged: (val) {
                  controller.personPostModel.fatherName = val;
                }),
            TextFormWithTitle(
                title: 'mother_name'.tr,
                capitalization: TextCapitalization.words,
                hintText: controller.personPostModel.motherName ?? 'mother_name'.tr,
                validator: (val) {
                  if (val!.isEmpty  && controller.personPostModel.motherName == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                
                onChanged: (val) {
                  controller.personPostModel.motherName = val;
                }),
            TextFormWithTitle(
                title: 'spouse_name'.tr,
                capitalization: TextCapitalization.words,
                hintText: controller.personPostModel.spouseName ?? 'spouse_name'.tr,
                validator: (val) {
                  if (val!.isEmpty  && controller.personPostModel.spouseName == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                
                onChanged: (val) {
                  controller.personPostModel.spouseName = val;
                }),
            DropdownWithTitle(
              title: 'doc_type'.tr,
              hintText: personController.personPreviewMap['doc_type'] == '' ? 'Select' : personController.personPreviewMap['doc_type'],
              dropdownList: ['nid'.tr, 'birth_cert'.tr, 'passport'.tr],
              saveValue: (value) {
                personController.personPreviewMap['doc_type']= value!;
              },
            ),
            TextFormWithTitle(
                title: 'doc_no'.tr,
                hintText: 'doc_no'.tr,
                initialValue: personController.personPreviewMap['doc_no'],
                
                validator: (val) {
                  if (val!.isEmpty  &&  personController.personPreviewMap['doc_no'].toString().isEmpty) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  //get preview  screen value
                  personController.personPreviewMap['doc_no']= val;

                }),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('number_type'.tr, style: GTheme.subtitle),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: DropdownSearch<NumberTypes>(
                        mode: Mode.MENU,
                        showSearchBox: true,
                        showClearButton: true,
                        dropdownSearchDecoration: InputDecoration(
                          hintText: personController.personPreviewMap['number_type'] == '' ? 'Select' : personController.personPreviewMap['number_type'],
                          hintStyle: const TextStyle(color: blackColor),
                        ),
                        validator: (value) {
                          if (value == null &&
                              personController.personPreviewMap['number_type']
                                  .toString()
                                  .isEmpty) {
                            return 'required'.tr;
                          } else {
                            return null;
                          }
                        },
                        items: controller.numberTypeList,
                        itemAsString: (NumberTypes? type) => prefs.language.val
                            ? type!.typeName.toString()
                            : type!.typeNameBn.toString(),
                        onChanged: (value) {
                          controller.personPostModel.numberTypeId = value!.id;

                          //get preview  screen value
                          personController.personPreviewMap['number_type'] =
                          (prefs.language.val
                              ? value.typeName
                              : value.typeNameBn)!;
                          // controller.computerApiPostData['dropDownIDType'] = value!.id;
                        }),
                  )
                ],
              ),
            ),
            TextFormWithTitle(
                title: 'number'.tr,
                hintText: 'number'.tr,
                initialValue: controller.personPostModel.number ?? '',
                
                validator: (val) {
                  if (val!.isEmpty  && controller.personPostModel.number == null) {
                    return 'required'.tr;
                  }
                  return null;
                },
                onChanged: (val) {
                  controller.personPostModel.number = val;
                }),
            const SizedBox(height: 20),
            customButton(context, 'next'.tr, () {
              if(_formKey.currentState!.validate()) {
              controller.nextTileNumber.value = 2;
              controller.showPersonIdentity.value = true;
              }
            })
          ],
        ),
      ),
    );
  }
}
