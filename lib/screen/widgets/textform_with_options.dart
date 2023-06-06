import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

class TextFormWithOptions extends StatelessWidget {
  TextFormWithOptions(
      {Key? key,
      this.title,
        this.keyboard,
      this.lines,
      this.hintText,
        this.initialValue,
        this.dropHintText,
      required this.onChanged,
      this.dropdownList,
      required this.saveValue})
      : super(key: key);

  final title;
  TextInputType? keyboard;
  int? lines = 1;
  final hintText;
  final initialValue;
  final dropHintText;
  Function(String) onChanged;
  final dropdownList;
  Function(String?) saveValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Text(title, style: GTheme.subtitle),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: TextFormField(
              cursorColor: primaryColor,
              maxLines: lines,
              keyboardType: keyboard,
              initialValue: initialValue,
              decoration: InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0)),
              onChanged: onChanged,
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            flex: 1,
            child: DropdownSearch<String>(
                mode: Mode.MENU,
                showSearchBox: true,
                dropdownButtonBuilder: (_) => const Padding(
                    padding: EdgeInsets.all(0)),
                dropdownSearchDecoration: InputDecoration(
                  hintText: dropHintText ?? 'Select',
                  hintStyle: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.clip),
                ),
                items: dropdownList,
                // itemAsString: (AllSection? u) => u!.Name.toString(),
                onChanged: saveValue),
          )
        ],
      ),
    );
  }
}
