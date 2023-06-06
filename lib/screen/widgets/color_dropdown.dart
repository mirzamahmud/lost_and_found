import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/service/my_prefs.dart';

import '../../model/color_model.dart';
import '../../theme/g_theme.dart';
import '../../util/hex_color.dart';

class ColorDropdown extends StatelessWidget {
  ColorDropdown({Key? key, this.colorHint, required this.changedFunction}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final prefs = Get.find<MyPrefs>();
  String? colorHint;

  Function(ColorModel?) changedFunction;

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
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text('color'.tr, style: GTheme.subtitle),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: DropdownSearch<ColorModel?>(
              mode: Mode.MENU,
              dropdownSearchDecoration: InputDecoration(
                hintText: colorHint == ''
                    ? 'Select'
                    : colorHint,
                hintStyle: const TextStyle(color: blackColor),
              ),
              items: controller.colorList,
              popupItemBuilder: _customPopupBuilder,
              itemAsString: (ColorModel? color) => prefs.language.val
                  ? color!.colorName.toString()
                  : color!.colorNameBn.toString(),
              onChanged: changedFunction,
            ),
          )
        ],
      ),
    );
  }
}
