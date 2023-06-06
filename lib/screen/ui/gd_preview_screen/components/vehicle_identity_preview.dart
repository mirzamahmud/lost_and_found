import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/button_with_title.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../info_entry_section/vehicle_section/vehicle_entry_main_screen.dart';

class VehicleIdentityPreview extends StatefulWidget {
  VehicleIdentityPreview({Key? key}) : super(key: key);

  @override
  State<VehicleIdentityPreview> createState() => _VehicleIdentityPreviewState();
}

class _VehicleIdentityPreviewState extends State<VehicleIdentityPreview> {
  final controller = Get.find<InfoEntryController>();

  Widget buildGridView(List<File?> files) {
    return SizedBox(
      height: 150,
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(controller.identityImages.length, (index) {
          return Container(
            margin: const EdgeInsets.all(4.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: primaryColor)),
            child: Semantics(
              label: 'vehicle_pictures',
              child: InkWell(
                  child: Image.file(File(files[index]!.path)))
              ),
            );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'identity_info'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(
                  title: 'color'.tr,
                  data: controller.vehiclePreviewName['colorName'] ?? ''),
              TextWithTitle(
                  title: 'identity_symbol'.tr,
                  data: controller.apiPostData['documentDescription'] ?? ''),
              controller.identityImages.isEmpty ? Container() : buildGridView(controller.identityImages),

            ],
          ),
        ),
      ],
    );
  }
}
