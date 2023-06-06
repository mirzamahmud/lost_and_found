import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/theme/g_theme.dart';

class TimeWithTitle extends StatelessWidget {
  TimeWithTitle({Key? key, this.title, this.hintText, required this.onChanged}) : super(key: key);
  final title;
  final hintText;
  Function (String) onChanged;

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
              type: DateTimePickerType.time,
              icon: const Icon(Icons.access_time, color: primaryColor),
              timeHintText: hintText,
              validator: (value) {
                      if (value!.isEmpty && hintText == null) {
                        return 'required'.tr;
                      }
                      return null;
                    },
              onChanged: onChanged,
            ),
          )
        ],
      ),
    );
  }
}
