import 'package:flutter/material.dart';
import 'package:online_gd/theme/g_theme.dart';

class MultiTextFormTitle extends StatelessWidget {
  MultiTextFormTitle({Key? key, this.title, this.firstInitial, this.secondInitial, this.keyboard, this.lines, this.hintText, this.secondHintText, required this.onChanged, required this.secondOnChanged}) : super(key: key);
  final title;
  TextInputType? keyboard;
  int? lines = 1;
  final hintText;
  String? firstInitial;
  String? secondInitial;
  final secondHintText;
  Function(String) onChanged;
  Function(String) secondOnChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(title, style: GTheme.subtitle),
          ),
          const SizedBox(width: 4),
          Expanded(
            flex: 2,
            child: TextFormField(
              cursorColor: primaryColor,
              maxLines: lines,
              keyboardType: keyboard,
              initialValue: firstInitial,
              style: GTheme.subtitle,
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(color: hintColor),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0)
              ),
              onChanged: onChanged,
            ),
          ),
          const SizedBox(width: 4),
          const Text(',', style: GTheme.title),
          const SizedBox(width: 4),
          Expanded(
            flex: 2,
            child: TextFormField(
              cursorColor: primaryColor,
              maxLines: lines,
              keyboardType: keyboard,
              initialValue: secondInitial,
              style: GTheme.subtitle,
              decoration: InputDecoration(
                  hintText: secondHintText,
                  hintStyle: const TextStyle(color: hintColor),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0)
              ),
              onChanged: secondOnChanged,
            ),
          ),
        ],
      ),
    );
  }
}
