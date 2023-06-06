import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mime/mime.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/button_with_title.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../controller/entry_controller/others_entry_controller.dart';
import '../info_entry_section/vehicle_section/vehicle_entry_main_screen.dart';

class MobileIdentityExpansion extends StatefulWidget {
  const MobileIdentityExpansion({Key? key}) : super(key: key);

  @override
  State<MobileIdentityExpansion> createState() =>
      _MobileIdentityExpansionState();
}

class _MobileIdentityExpansionState extends State<MobileIdentityExpansion> {
  final controller = Get.find<InfoEntryController>();
  final othersController = Get.find<OthersEntryController>();
  FilePickerResult? result;
  List<File?> images = <File?>[];

  // Checking file type
  bool isPdf(String path) {
    final mimeType = lookupMimeType(path);

    return mimeType == 'application/pdf';
  }

  String _error = 'No Error Detected';

  Widget buildGridView(List<File?> files) {
    return SizedBox(
      height: 100,
      child: GridView.count(
        crossAxisCount: 4,
        children: List.generate(files.length, (index) {
          return Container(
            margin: const EdgeInsets.all(4.0),
            width: 80,
            height: 80,
            decoration: BoxDecoration(border: Border.all(color: primaryColor)),
            child: Semantics(
              child: InkWell(
                onTap: () {
                  setState(() {
                    files.remove(files[index]);
                  });
                },
                child: isPdf(files[index]!.path)
                    ? Image.asset('assets/images/pdf.png')
                    : Image.file(File(files[index]!.path)),
              ),
            ),
          );
        }),
      ),
    );
  }

  Future<List<File?>> _openGallery(int typeId) async {
    result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', 'bmp', 'pdf', 'doc', 'docx']);

    if (result != null) {
      images = result!.paths.map((path) => File(path!)).toList();
      // For sending data to api
      switch (typeId) {
        case 1:
          controller.fileType.add('Blue');
          break;
        case 2:
          controller.fileType.add('Tex');
          break;
        case 3:
          controller.fileType.add('Fitness');
          break;
      }
      controller.imageAndDocList.addAll(result!.paths);
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
          TextFormWithTitle(
              title: 'identity_symbol'.tr,
              lines: 2,
              onChanged: (val) {
                othersController.othersPreviewName['mobileIdentitryInfo'] = val;
              }),
          const SizedBox(height: 10),
          ButtonWithTitle(
              title: 'memo_image'.tr,
              buttonTitle: 'photo_attach'.tr,
              onTap: () {
                _openGallery(1).then((value) {
                  // To show the images
                  controller.memoImages.value = value;
                });
              }),
          const SizedBox(height: 10),
          controller.memoImages.isEmpty
              ? const SizedBox(height: 50)
              : buildGridView(controller.memoImages),
          ButtonWithTitle(
              title: 'phone_box_image'.tr,
              buttonTitle: 'photo_attach'.tr,
              onTap: () {
                _openGallery(1).then((value) {
                  // To show the images
                  controller.phonBoxImages.value = value;
                });
              }),
          const SizedBox(height: 10),
          controller.memoImages.isEmpty
              ? const SizedBox(height: 50)
              : buildGridView(controller.phonBoxImages),
          ButtonWithTitle(
              title: 'phone_image'.tr,
              buttonTitle: 'photo_attach'.tr,
              onTap: () {
                _openGallery(1).then((value) {
                  // To show the images
                  controller.phoneImages.value = value;
                });
              }),
          const SizedBox(height: 10),
          controller.phoneImages.isEmpty
              ? const SizedBox(height: 50)
              : buildGridView(controller.phoneImages),
          // buildGridView(),
          const SizedBox(height: 20),
          customButton(context, 'next'.tr, () {
            controller.nextTileNumber.value = 3;
            controller.showPlace.value = true;
          })
        ],
      ),
    );
  }
}
