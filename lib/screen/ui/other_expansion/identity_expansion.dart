import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/button_with_title.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

class IdentityExpansion extends StatefulWidget {
  const IdentityExpansion({Key? key}) : super(key: key);

  @override
  State<IdentityExpansion> createState() => _IdentityExpansionState();
}

class _IdentityExpansionState extends State<IdentityExpansion> {
  final controller = Get.find<InfoEntryController>();
  final othersController = Get.find<OthersEntryController>();

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
      if (othersController.otherImageAndDocList.isNotEmpty) {
        othersController.otherImageAndDocList.clear();
      }
     /* if (controller.fileType.isNotEmpty) {
        controller.fileType.clear();
      }*/
      othersController.otherImageAndDocList.addAll(result!.paths);
      // controller.fileType.add('identity_info');
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
              hintText: 'identity_info'.tr,
              initialValue: controller.apiPostData['identificationMark'] ?? '',
              title: 'identity_info'.tr,
              lines: 3,
              onChanged: (val) {
                if (othersController.documentId.value == 7) {
                  controller.apiPostData['identifySign'] = val;
                } else {
                  controller.apiPostData['identificationMark'] = val;
                }
              }),
          const SizedBox(height: 10),
          ButtonWithTitle(
              title: 'photo'.tr,
              buttonTitle: 'photo_attach'.tr,
              onTap: () async {
                _openGallery().then((value) {
                  othersController.otherIdentityImage.value = value;
                });
              }),
          othersController.otherIdentityImage.isEmpty ? const SizedBox() : buildGridView(othersController.otherIdentityImage),
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
