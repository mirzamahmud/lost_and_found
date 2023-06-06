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

import '../../widgets/color_dropdown.dart';
import '../info_entry_section/vehicle_section/vehicle_entry_main_screen.dart';

class IdentityEntryScreen extends StatefulWidget {
  const IdentityEntryScreen({Key? key}) : super(key: key);

  @override
  State<IdentityEntryScreen> createState() => _IdentityEntryScreenState();
}

class _IdentityEntryScreenState extends State<IdentityEntryScreen> {
  final controller = Get.find<InfoEntryController>();
  final prefs = Get.find<MyPrefs>();

  List<File?> images = <File?>[];
  FilePickerResult? result;

  Widget buildGridView(List<File?> files) {
    return SizedBox(
      height: 150,
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(files.length, (index) {
          return Container(
            margin: const EdgeInsets.all(4.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: primaryColor)),
            child: Semantics(
              label: 'vehicle_pictures',
              child: InkWell(
                  onTap: () {
                    setState(() {
                      files.remove(files[index]);
                    });
                  },
                  child: Image.file(File(files[index]!.path))),
            ),
          );
        }),
      ),
    );
  }

  // Image choose from gallery
  Future<List<File?>> _openGallery() async {
    result = await FilePicker.platform.pickFiles(
        allowMultiple: true, type: FileType.custom, allowedExtensions: ['jpg']);

    if (result != null) {
    images = result!.paths.map((path) => File(path!)).toList();
    if (controller.imageAndDocList.isNotEmpty) {
      controller.imageAndDocList.clear();
    }
    if (controller.fileType.isNotEmpty) {
      controller.fileType.clear();
    }
    controller.imageAndDocList.addAll(result!.paths);
    controller.fileType.add('identity_info');
    setState(() {});
    }
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal),
      child: Column(
        children: [
          ColorDropdown(
              colorHint: controller.vehiclePreviewName['colorName'] ?? '',
              changedFunction: (value) {
                controller.apiPostData['colorsId'] = value!.id;
                controller.vehiclePreviewName['colorName'] =
                    (prefs.language.val ? value.colorName : value.colorNameBn)!;
              }),
          TextFormWithTitle(
              title: 'identity_info'.tr,
              initialValue: controller.apiPostData['documentDescription'] ?? '',
              hintText: 'Select',
              lines: 3,
              
              onChanged: (val) {
                controller.apiPostData['documentDescription'] = val;
              }),
          const SizedBox(height: 10),
          ButtonWithTitle(
              title: 'photo'.tr,
              buttonTitle: 'photo_attach'.tr,
              onTap: () async {
                _openGallery().then((value) {
                  controller.identityImages.value = value;
                });
              }),
          controller.identityImages.isEmpty ? Container() : buildGridView(controller.identityImages),
          const SizedBox(height: 10),
          customButton(context, 'next'.tr, () {
            controller.nextTileNumber.value = 3;
            controller.showAttachment.value = true;
            // vehicle entry image set
            // controller.imageAndDocMap = imagesPath;
          })
        ],
      ),
    );
  }
}
