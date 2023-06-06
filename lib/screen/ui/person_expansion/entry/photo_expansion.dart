import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/button_with_title.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/theme/g_theme.dart';

class PhotoExpansion extends StatefulWidget {
  PhotoExpansion({Key? key}) : super(key: key);

  @override
  State<PhotoExpansion> createState() => _PhotoExpansionState();
}

class _PhotoExpansionState extends State<PhotoExpansion> {
  final controller = Get.find<InfoEntryController>();

  List<File?> images = <File?>[];
  FilePickerResult? result;

  Widget buildGridView() {
    return SizedBox(
      height: 150,
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(images.length, (index) {
          return Container(
            margin: const EdgeInsets.all(4.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: primaryColor)),
            child: Semantics(
              label: 'person_pictures',
              child: InkWell(
                  onTap: () {
                    setState(() {
                      images.remove(images[index]);
                    });
                  },
                  child: Image.file(File(images[index]!.path))),
            ),
          );
        }),
      ),
    );
  }

  // Image choose from gallery
  Future<List<File?>> _openGallery() async {
    result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom, allowedExtensions: ['jpg']);

    if(result != null) {

    images = result!.paths.map((path) => File(path!)).toList();
    controller.imageAndDocList.addAll(result!.paths);
    controller.fileType.add('identity_info');
    setState(() {
    });
    }
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: ExpansionTile(
        key: GlobalKey(),
        initiallyExpanded: controller.nextTileNumber.value == 6,
        collapsedBackgroundColor: deactivatedColor,
        title: Text('photo_description'.tr, style: GTheme.title),
        children: [
          ButtonWithTitle(
              title: 'photo'.tr,
              buttonTitle: 'photo_attach'.tr,
              onTap: () async {
                _openGallery().then((value) {
                  print('Image: $value');
                  controller.identityImages.value = value;
                });
              }),
          images.isEmpty ? Container() : buildGridView(),
          const SizedBox(height: 20),
          customButton(context, 'next'.tr, () {
            controller.nextTileNumber.value = 7;
            controller.showLostPlace.value = true;
          })
        ],
      ),
    );
  }
}