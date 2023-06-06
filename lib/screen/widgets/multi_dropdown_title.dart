import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

class MultiDropdownTitle extends StatelessWidget {
  const MultiDropdownTitle({Key? key,this.title, this.dropdownList, this.secondDropdownList, this.saveValue, this.secondSaveValue}) : super(key: key);

  final title;
  final dropdownList;
  final secondDropdownList;
  final saveValue;
  final secondSaveValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(title, style: GTheme.subtitle),),
          const SizedBox(width: 4),
          Expanded(
            flex: 2,
            child: DropdownSearch<String>.multiSelection(
                mode: Mode.MENU,
                showSelectedItems: true,
                showSearchBox: true,
                showClearButton: true,
                dropdownButtonBuilder: (_) => const Padding(
                    padding: EdgeInsets.all(0)),
                dropdownSearchDecoration: const InputDecoration(
                  hintText: 'Select',
                  hintStyle: TextStyle(color: Colors.black),
                ),
                items: dropdownList,
                // itemAsString: (AllSection? u) => u!.Name.toString(),
                onChanged: (data) {}),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: DropdownSearch<String>.multiSelection(
                mode: Mode.MENU,
                showSelectedItems: true,
                showSearchBox: true,
                showClearButton: true,
                dropdownButtonBuilder: (_) => const Padding(
                    padding: EdgeInsets.all(0)),
                dropdownSearchDecoration: const InputDecoration(
                  hintText: 'Select',
                  hintStyle: TextStyle(color: Colors.black),
                ),
                items: secondDropdownList,
                // itemAsString: (AllSection? u) => u!.Name.toString(),
                onChanged: (data) {}),
          )
        ],
      ),
    );
  }
}
