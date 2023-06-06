import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:online_gd/theme/g_theme.dart';

class DateFieldWithTitle extends StatelessWidget {
  DateFieldWithTitle(
      {Key? key,
      this.title,
      this.hintText,
        this.validator,
      required this.onChanged})
      : super(key: key);
  final title;
  final hintText;
  String? Function(String?)? validator;
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
            child: DateTimePicker(
              type: DateTimePickerType.date,
              dateMask: 'd MMM, yyyy',
              icon: const Icon(Icons.event, color: primaryColor),
              initialDate: DateTime.now(),
              firstDate: DateTime(1910),
              lastDate: DateTime.now().add(const Duration(days: 365)),
              dateHintText: hintText,
              validator: validator,
              style: GTheme.body2,
              onChanged: onChanged,
            ),
          )
        ],
      ),
    );
  }
}
