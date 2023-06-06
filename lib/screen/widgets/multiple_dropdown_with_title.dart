import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

class MultipleDropdownWithTitle extends StatelessWidget {
  const MultipleDropdownWithTitle({Key? key,this.title, this.dropdownList, this.saveValue}) : super(key: key);

  final title;
  final dropdownList;
  final saveValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(title, style: GTheme.subtitle),),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: DropdownSearch<String>.multiSelection(
                mode: Mode.MENU,
                showSelectedItems: true,
                showSearchBox: true,
                showClearButton: true,
                dropdownSearchDecoration: const InputDecoration(
                  hintText: 'Select',
                  hintStyle: TextStyle(color: Colors.black),
                ),
                items: dropdownList,
                // itemAsString: (AllSection? u) => u!.Name.toString(),
                onChanged: (data) {}),
          )
        ],
      ),
    );
  }
}
