import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/multi_dropdown_title.dart';
import 'package:online_gd/screen/widgets/multi_textform_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../model/person_model/person_physical_model.dart';
import '../../../../model/person_model/person_post_model.dart';

class PersonSearchPhysicalExpansion extends StatelessWidget {
  PersonSearchPhysicalExpansion({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final prefs = Get.find<MyPrefs>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Obx(() => controller.isLoading.value ? const Center(child: CircularProgressIndicator()) : ExpansionTile(
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.eyeTypes,
                      itemAsString: (EyeTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.eyeTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.noseTypes,
                      itemAsString: (NoseTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.noseTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.hairTypes,
                      itemAsString: (HairTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.hairTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.foreHeadTypes,
                      itemAsString: (ForeHeadTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.foreHeadTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.beardTypes,
                      itemAsString: (BeardTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.beardTypeId = value!.id;
                      }),
                )
              ],
            ),
          ),
          TextFormWithTitle(
              title: 'weight'.tr,
              hintText: 'kg'.tr,
              keyboard: TextInputType.number,
              
              onChanged: (val) {
                controller.personPostModel.weight = double.parse(val);
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.bodyStructures,
                      itemAsString: (BodyStructures? type) => prefs.language.val
                          ? type!.structureName.toString()
                          : type!.structureNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.bodyStructureId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.faceShapeTypes,
                      itemAsString: (FaceShapeTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.faceShapeTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.bodyChinTypes,
                      itemAsString: (BodyChinTypes? type) => prefs.language.val
                          ? type!.chinTypeName.toString()
                          : type!.chinTypeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.bodyChinTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.bodyColors,
                      itemAsString: (BodyColors? type) => prefs.language.val
                          ? type!.colorName.toString()
                          : type!.colorNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.bodyColorId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.moustacheTypes,
                      itemAsString: (MoustacheTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.moustacheTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.earTypes,
                      itemAsString: (EarTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.earTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.neckTypes,
                      itemAsString: (NeckTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.neckTypeId = value!.id;
                      }),
                )
              ],
            ),
          ),
          MultiTextFormTitle(
              title: 'height'.tr,
              hintText: 'feet'.tr,
              keyboard: TextInputType.number,
              secondHintText: 'inch'.tr,
              onChanged: (val) {
                controller.personPostModel.heightFeet = double.parse(val);
              },
              secondOnChanged: (val) {
                controller.personPostModel.heightInch = double.parse(val);
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.specialBirthMarkTypes,
                      itemAsString: (SpecialBirthMarkTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.specialBirthMarkTypeId = value!.id;
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
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.teethTypes,
                      itemAsString: (TeethTypes? type) => prefs.language.val
                          ? type!.typeName.toString()
                          : type!.typeNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.teethTypeId = value!.id;
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
                  child: Text('special_physical_des'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<SpecialBodyConditions>(
                      mode: Mode.MENU,
                      showSearchBox: true,
                      showClearButton: true,
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: blackColor),
                      ),
                      items: controller.personPhysicalModel.value.specialBodyConditions,
                      itemAsString: (SpecialBodyConditions? type) => prefs.language.val
                          ? type!.conditionName.toString()
                          : type!.conditionNameBn.toString(),
                      onChanged: (value) {
                        controller.personPostModel.specialBodyConditionId = value!.id;
                      }),
                )
              ],
            ),
          ),
          TextFormWithTitle(
              title: 'visible_tattoo'.tr,
              hintText: 'visible_tattoo'.tr,
              
              onChanged: (val) {
                controller.personPostModel.visibleTatto = val;
              }),
          TextFormWithTitle(
              title: 'other_identification'.tr,
              hintText: 'other_identification'.tr,
              
              onChanged: (val) {
                controller.personPostModel.otherIdentityfyMark = val;
              }),
          const SizedBox(height: 10),
        ],
      )),
    );
  }
}