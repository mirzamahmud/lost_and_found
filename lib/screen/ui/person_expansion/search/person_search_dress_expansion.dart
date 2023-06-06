import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/color_dropdown.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/multi_dropdown_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../model/color_model.dart';
import '../../../../model/person_model/dress_model.dart';
import '../../../../model/person_model/person_post_model.dart';
import '../../../../util/hex_color.dart';

class PersonSearchDressExpansion extends StatelessWidget {
  PersonSearchDressExpansion({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final prefs = Get.find<MyPrefs>();

  // Color widget
  Widget _allColor({required Function(ColorModel?) changedFunction}) =>
      DropdownSearch<ColorModel?>(
        mode: Mode.MENU,
        dialogMaxWidth: 300,
        dropdownButtonBuilder: (_) => const Padding(padding: EdgeInsets.all(0)),
        dropdownSearchDecoration: const InputDecoration(
          hintText: 'Select',
          hintStyle: TextStyle(color: blackColor),
        ),
        items: controller.colorList,
        popupItemBuilder: _customPopupBuilder,
        itemAsString: (ColorModel? color) => prefs.language.val
            ? color!.colorName.toString()
            : color!.colorNameBn.toString(),
        onChanged: changedFunction,
      );

  // pop up builder
  Widget _customPopupBuilder(
      BuildContext context, ColorModel? color, bool isSelected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        selected: isSelected,
        title: Text(prefs.language.val
            ? '${color?.colorName}'
            : '${color?.colorNameBn}'),
        leading: CircleAvatar(
          backgroundColor: HexColor('${color?.colorCode}'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: ExpansionTile(
        key: GlobalKey(),
        initiallyExpanded: controller.nextTileNumber.value == 5,
        collapsedBackgroundColor: deactivatedColor,
        title: Text('dress_description'.tr, style: GTheme.title),
        children: [
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Text(
                    'position'.tr,
                    style: GTheme.title,
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(width: 4),
              Expanded(
                  flex: 3,
                  child: Text(
                    'dress'.tr,
                    style: GTheme.title,
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(width: 4),
              Expanded(
                  flex: 3,
                  child: Text(
                    'color'.tr,
                    style: GTheme.title,
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('head'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 4),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<InTheHeads>(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownButtonBuilder: (_) =>
                      const Padding(padding: EdgeInsets.all(0)),
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                      items: controller.dressModel.value.inTheHeads,
                      itemAsString: (InTheHeads? data) => prefs.language.val
                          ? data!.name.toString()
                          : data!.nameBn.toString(),
                      onChanged: (data) {
                        controller.personPostModel.inTheHeadId = data!.id;
                      }),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: _allColor(
                    changedFunction: (val) {
                      controller.personPostModel.inTheHeadColorId = val!.id;
                    },
                  ),
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
                  child: Text('eye'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 4),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<InTheEyes>(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownButtonBuilder: (_) =>
                      const Padding(padding: EdgeInsets.all(0)),
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                      items: controller.dressModel.value.inTheEyes,
                      itemAsString: (InTheEyes? data) => prefs.language.val
                          ? data!.name.toString()
                          : data!.nameBn.toString(),
                      onChanged: (data) {
                        controller.personPostModel.inTheEyeId = data!.id;
                      }),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: _allColor(
                    changedFunction: (val) {
                      controller.personPostModel.inTheEyeColorId = val!.id;
                    },
                  ),
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
                  child: Text('leg'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 4),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<InTheLegs>(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownButtonBuilder: (_) =>
                      const Padding(padding: EdgeInsets.all(0)),
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                      items: controller.dressModel.value.inTheLegs,
                      itemAsString: (InTheLegs? data) => prefs.language.val
                          ? data!.name.toString()
                          : data!.nameBn.toString(),
                      onChanged: (data) {
                        controller.personPostModel.inTheLegsId = data!.id;
                      }),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: _allColor(
                    changedFunction: (val) {
                      controller.personPostModel.inTheLegsColorId = val!.id;
                    },
                  ),
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
                  child: Text('throat'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 4),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<InTheThroats>(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownButtonBuilder: (_) =>
                      const Padding(padding: EdgeInsets.all(0)),
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                      items: controller.dressModel.value.inTheThroats,
                      itemAsString: (InTheThroats? data) => prefs.language.val
                          ? data!.name.toString()
                          : data!.nameBn.toString(),
                      onChanged: (data) {
                        controller.personPostModel.inTheThroatId = data!.id;
                      }),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: _allColor(
                    changedFunction: (val) {
                      controller.personPostModel.inTheHeadId = val!.id;
                    },
                  ),
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
                  child: Text('body'.tr, style: GTheme.subtitle),
                ),
                const SizedBox(width: 4),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<InTheBodies>(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownButtonBuilder: (_) =>
                      const Padding(padding: EdgeInsets.all(0)),
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                      items: controller.dressModel.value.inTheBodies,
                      itemAsString: (InTheBodies? data) => prefs.language.val
                          ? data!.name.toString()
                          : data!.nameBn.toString(),
                      onChanged: (data) {
                        controller.personPostModel.inTheBodyId = data!.id;
                      }),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: _allColor(
                    changedFunction: (val) {
                      controller.personPostModel.inTheBodyColorId = val!.id;
                    },
                  ),
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
                  child: Text('waist'.tr, style: GTheme.subtitle),),
                const SizedBox(width: 4),
                Expanded(
                  flex: 3,
                  child: DropdownSearch<InTheWaists>(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownButtonBuilder: (_) => const Padding(
                          padding: EdgeInsets.all(0)),
                      dropdownSearchDecoration: const InputDecoration(
                        hintText: 'Select',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                      items: controller.dressModel.value.inTheWaists,
                      itemAsString: (InTheWaists? data) => prefs.language.val
                          ? data!.name.toString()
                          : data!.nameBn.toString(),
                      onChanged: (data) {
                        controller.personPostModel.inTheWaistId = data!.id;
                      }),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 3,
                  child: _allColor(
                    changedFunction: (val) {
                      controller.personPostModel.inTheWaistColorId = val!.id;
                    },
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}