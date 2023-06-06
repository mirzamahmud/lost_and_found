import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/theme/g_theme.dart';

class DropdownWithTitle extends StatelessWidget {
  DropdownWithTitle({
    Key? key,
    this.title,
    this.dropdownList,
    this.hintText,
    this.showSearch,
    this.validator,
    required this.saveValue,
  }) : super(key: key);


  final title;
  final dropdownList;
  String? hintText;
  bool? showSearch;
  String? Function(String?)? validator;
  Function(String?) saveValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(title, style: GTheme.subtitle),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: DropdownSearch<String>(
                mode: Mode.MENU,
                showSearchBox: showSearch ?? true,
                showClearButton: true,
                validator: validator,
                dropdownSearchDecoration: InputDecoration(
                  hintText: hintText == '' ? 'Select' : hintText,
                  hintStyle: const TextStyle(color: Colors.black),
                ),
                items: dropdownList,
                onChanged: saveValue),
          )
        ],
      ),
    );
  }
}
