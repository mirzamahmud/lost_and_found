import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:online_gd/theme/g_theme.dart';

class OnlyNumberTextForm extends StatelessWidget {
  OnlyNumberTextForm(
      {Key? key,
        this.title,
        this.capitalization,
        this.keyboard,
        this.lines,
        required this.isValidate,
        this.hintText,
        required this.onChanged,
        this.enabled,
        this.initialValue})
      : super(key: key);
  final title;
  String? initialValue;
  TextCapitalization? capitalization;
  int? lines = 1;
  bool? enabled;
  TextInputType? keyboard;
  bool isValidate = false;
  final hintText;
  Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
              child: Text(title, style: GTheme.subtitle),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 4,
            child: TextFormField(
              cursorColor: primaryColor,
              textCapitalization:
              capitalization ?? TextCapitalization.sentences,
              maxLines: lines,
              enabled: enabled,
              maxLength: 17,
              keyboardType: keyboard,
              style: GTheme.subtitle,
              initialValue: initialValue,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'required'.tr;
                } else if (value.isNotEmpty && value.length < 10) {
                  Get.defaultDialog(
                      title: 'warning'.tr,
                      middleText: 'nid_min_length_alert'.tr,
                      textConfirm: 'Ok',
                      confirmTextColor: blackColor,
                      onConfirm: Get.back);
                } else if (value.length == 13) {
                  Get.defaultDialog(
                      title: 'warning'.tr,
                      middleText: 'nid_number_alert'.tr,
                      textConfirm: 'Ok',
                      confirmTextColor: blackColor,
                      onConfirm: Get.back);
                }
                return null;
              },
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