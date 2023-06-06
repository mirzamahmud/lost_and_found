import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';

import '../../theme/g_theme.dart';

class CountryWidget extends StatelessWidget {
  CountryWidget({Key? key, this.initialValue}) : super(key: key);
  final controller = Get.find<InfoEntryController>();

  String? initialValue;

  Widget _buildDropdownItem(Country country) => SizedBox(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(child: Text(country.name)),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: deactivatedColor, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(25))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: CountryPickerDropdown(
          initialValue: initialValue,
          itemBuilder: _buildDropdownItem,
          isExpanded: true,
          isDense: true,
          onValuePicked: (Country country) {
            controller.countryName.value = country.name;
            controller.apiPostData['madeIn'] = country.name;
          },
        )
      ),
    );
  }
}
