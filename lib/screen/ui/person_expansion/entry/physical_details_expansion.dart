import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/multi_textform_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../controller/search_controller/person_search_controller.dart';
import '../../../../model/person_model/person_physical_model.dart';
import '../../../../model/person_model/person_post_model.dart';

class PhysicalDetailsExpansion extends StatelessWidget {
  PhysicalDetailsExpansion({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final personController = Get.put(PersonSearchController());
  final prefs = Get.find<MyPrefs>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: ExpansionTile(
        key: GlobalKey(),
        initiallyExpanded: controller.nextTileNumber.value == 4,
        collapsedBackgroundColor: deactivatedColor,
        title: Text('physical_details'.tr, style: GTheme.title),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('eye'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<EyeTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController.personPreviewMap['eye'] == ''
                            ? 'Select'
                            : personController.personPreviewMap['eye'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.eyeTypes,
                      itemAsString: (EyeTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.eyeTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['eye'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child: Text('nose'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<NoseTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['nose'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['nose'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.noseTypes,
                      itemAsString: (NoseTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.noseTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['nose'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child: Text('hair'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<HairTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['hair'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['hair'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.hairTypes,
                      itemAsString: (HairTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.hairTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['hair'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child: Text('forehead'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<ForeHeadTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['forehead'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['forehead'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.foreHeadTypes,
                      itemAsString: (ForeHeadTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.foreHeadTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['forehead'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child: Text('beard'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<BeardTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['beard'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['beard'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.beardTypes,
                      itemAsString: (BeardTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.beardTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['beard'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
                      }),
                )
              ],
            ),
          ),
          TextFormWithTitle(
              title: 'weight'.tr,
              hintText: 'kg'.tr,
              initialValue: controller.personPostModel.weight == null
                  ? ''
                  : controller.personPostModel.weight?.toStringAsFixed(0),
              keyboard: TextInputType.number,
              
              onChanged: (val) {
                controller.personPostModel.weight = double.parse(val);
                print('Weight: ${controller.personPostModel.weight}');
              }),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('physical_const'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<BodyStructures>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController
                                    .personPreviewMap['physical_const'] ==
                                ''
                            ? 'Select'
                            : personController
                                .personPreviewMap['physical_const'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items:
                          controller.personPhysicalModel.value.bodyStructures,
                      itemAsString: (BodyStructures? type) => prefs.language.val
                          ? type!.structureName.toString()
                          : type!.structureNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.bodyStructureId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['physical_const'] =
                            prefs.language.val
                                ? value.structureName.toString()
                                : value.structureNameBn.toString();
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
                  child: Text('face_shape'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<FaceShapeTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController
                                    .personPreviewMap['face_shape'] ==
                                ''
                            ? 'Select'
                            : personController.personPreviewMap['face_shape'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items:
                          controller.personPhysicalModel.value.faceShapeTypes,
                      itemAsString: (FaceShapeTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.faceShapeTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['face_shape'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child: Text('chin'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<BodyChinTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['chin'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['chin'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.bodyChinTypes,
                      itemAsString: (BodyChinTypes? type) => prefs.language.val
                          ? type!.chinTypeName.toString()
                          : type!.chinTypeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.bodyChinTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['chin'] =
                            prefs.language.val
                                ? value.chinTypeName.toString()
                                : value.chinTypeNameBn.toString();
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
                  child: Text('skin_color'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<BodyColors>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController
                                    .personPreviewMap['skin_color'] ==
                                ''
                            ? 'Select'
                            : personController.personPreviewMap['skin_color'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.bodyColors,
                      itemAsString: (BodyColors? type) => prefs.language.val
                          ? type!.colorName.toString()
                          : type!.colorNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.bodyColorId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['skin_color'] =
                            prefs.language.val
                                ? value.colorName.toString()
                                : value.colorNameBn.toString();
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
                  child: Text('mustache'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<MoustacheTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['mustache'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['mustache'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items:
                          controller.personPhysicalModel.value.moustacheTypes,
                      itemAsString: (MoustacheTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.moustacheTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['mustache'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child: Text('ears'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<EarTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['ears'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['ears'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.earTypes,
                      itemAsString: (EarTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.earTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['ears'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child: Text('neck'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<NeckTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['neck'] == ''
                                ? 'Select'
                                : personController.personPreviewMap['neck'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.neckTypes,
                      itemAsString: (NeckTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.neckTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['neck'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
                      }),
                )
              ],
            ),
          ),
          MultiTextFormTitle(
              title: 'height'.tr,
              hintText: 'feet'.tr,
              firstInitial: personController.personPreviewMap['height'] ?? '',
              secondInitial: personController.personPreviewMap['inches'] ?? '',
              keyboard: TextInputType.number,
              secondHintText: 'inch'.tr,
              onChanged: (val) {
                controller.personPostModel.heightFeet = double.parse(val);
                personController.personPreviewMap['height'] = val.toString();
              },
              secondOnChanged: (val) {
                controller.personPostModel.heightInch = double.parse(val);
                personController.personPreviewMap['inches'] = val.toString();
              }),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('birthmark'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<SpecialBirthMarkTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['birthmark'] == ''
                                ? 'Select'
                                : personController
                                    .personPreviewMap['birthmark'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller
                          .personPhysicalModel.value.specialBirthMarkTypes,
                      itemAsString: (SpecialBirthMarkTypes? type) =>
                          prefs.language.val
                              ? type!.typeName.toString()
                              : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.specialBirthMarkTypeId =
                            value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['birthmark'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child: Text('des_teeth'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<TeethTypes>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText:
                            personController.personPreviewMap['des_teeth'] == ''
                                ? 'Select'
                                : personController
                                    .personPreviewMap['des_teeth'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.teethTypes,
                      itemAsString: (TeethTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.teethTypeId = value!.id;
                        //get preview  screen value
                        personController.personPreviewMap['des_teeth'] =
                            prefs.language.val
                                ? value.typeName.toString()
                                : value.typeNameBn.toString();
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
                  child:
                      Text('special_physical_des'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<SpecialBodyConditions>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: personController
                                    .personPreviewMap['special_physical_des'] ==
                                ''
                            ? 'Select'
                            : personController
                                .personPreviewMap['special_physical_des'],
                        hintStyle: const TextStyle(color: blackColor),
                      ),
                      items: controller
                          .personPhysicalModel.value.specialBodyConditions,
                      itemAsString: (SpecialBodyConditions? type) =>
                          prefs.language.val
                              ? type!.conditionName.toString()
                              : type!.conditionNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.specialBodyConditionId =
                            value!.id;
                        //get preview  screen value
                        personController
                                .personPreviewMap['special_physical_des'] =
                            prefs.language.val
                                ? value.conditionName.toString()
                                : value.conditionNameBn.toString();
                      }),
                )
              ],
            ),
          ),
          TextFormWithTitle(
              title: 'visible_tattoo'.tr,
              hintText: 'visible_tattoo'.tr,
              initialValue: controller.personPostModel.visibleTatto ?? '',
              
              onChanged: (val) {
                controller.personPostModel.visibleTatto = val;
              }),
          TextFormWithTitle(
              title: 'other_identification'.tr,
              hintText: 'other_identification'.tr,
              initialValue:
                  controller.personPostModel.otherIdentityfyMark ?? '',
              
              onChanged: (val) {
                controller.personPostModel.otherIdentityfyMark = val;
              }),
          const SizedBox(height: 20),
          customButton(context, 'next'.tr, () {
            controller.nextTileNumber.value = 5;
            controller.showDress.value = true;
          })
        ],
      ),
    );
  }
}
