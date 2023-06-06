import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:online_gd/theme/g_theme.dart';

class TextFormWithTitle extends StatelessWidget {
  TextFormWithTitle(
      {Key? key,
      this.title,
      this.capitalization,
      this.keyboard,
      this.lines,
      this.hintText,
        this.validator,
      required this.onChanged,
      this.enabled,
      this.initialValue})
      : super(key: key);
  final title;
  String? initialValue;
  TextCapitalization? capitalization;
  int? lines = 1;
  bool? enabled = true;
  TextInputType? keyboard;
  String? Function(String?)? validator;
  String? hintText;
  Function(String) onChanged;

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
            child: TextFormField(
              cursorColor: primaryColor,
              textCapitalization:
                  capitalization ?? TextCapitalization.sentences,
              maxLines: lines,
              enabled: enabled,
              keyboardType: keyboard,
              style: GTheme.subtitle,
              initialValue: initialValue,
              validator: validator,
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: GTheme.body2,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0)),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
