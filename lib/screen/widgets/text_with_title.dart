import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:online_gd/theme/g_theme.dart';

class TextWithTitle extends StatelessWidget {
  TextWithTitle({Key? key, this.title, this.data}) : super(key: key);
  final title;
  final data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(title, style: GTheme.title),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: Text(
              data,
              style: GTheme.subtitle,
            ),
          ),
        ],
      ),
    );
  }
}
