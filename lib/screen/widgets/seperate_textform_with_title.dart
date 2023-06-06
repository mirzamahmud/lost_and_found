import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:online_gd/theme/g_theme.dart';

class SeparateFromFieldWithTitle extends StatelessWidget {
  SeparateFromFieldWithTitle(
      {Key? key,
      this.title,
      this.hintText,
        this.controller,
        this.validator,
      required this.onChanged,
      })
      : super(key: key);
  final title;
  String? Function(String?)? validator;
  final hintText;
  TextEditingController? controller;
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
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText
              ),
              inputFormatters: [
                TextInputMask(mask: 'XX-XX-XX-XX-XX-XX-XX-XX-XX'),
                UpperCaseTextFormatter()
              ],
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
