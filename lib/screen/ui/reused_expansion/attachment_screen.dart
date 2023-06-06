import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mime/mime.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/button_with_title.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../info_entry_section/vehicle_section/vehicle_entry_main_screen.dart';

class AttachmentScreen extends StatefulWidget {
  const AttachmentScreen({Key? key}) : super(key: key);

  @override
  State<AttachmentScreen> createState() => _AttachmentScreenState();
}

class _AttachmentScreenState extends State<AttachmentScreen> {
  final controller = Get.find<InfoEntryController>();

  FilePickerResult? result;
  final mimeType = lookupMimeType('/some/path/to/file/file.jpg');
  File? pdfCover;

  List<File?> images = <File?>[];

  // Checking file type
  bool isPdf(String path) {
    final mimeType = lookupMimeType(path);

    return mimeType == 'application/pdf';
  }

  Widget buildGridView(List<File?> files) {
    return SizedBox(
      height: 100,
      child: GridView.count(
        key: const PageStorageKey(VehicleEntryMainScreen),
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

  // Image choose from gallery
  Future<List<File?>> _openGallery(int typeId) async {
    result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', 'pdf']);

    if (result != null) {
      images = result!.paths.map((path) => File(path!)).toList();
      // For sending data to api
      switch (typeId) {
        case 1:
          controller.fileType.add('blue_box');
          break;
        case 2:
          controller.fileType.add('tex_token');
          break;
        case 3:
          controller.fileType.add('fitness_certi');
          break;
        case 4:
          controller.fileType.add('insurance');
          break;
        case 5:
          controller.fileType.add('purchase');
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
          ButtonWithTitle(
              title: 'blue_book'.tr,
              buttonTitle: 'file_attach'.tr,
              onTap: () {
                _openGallery(1)
                    .then((value) {
                      // To show the images
                  controller.blueBookImages.value = value;
                });
              }),
          controller.blueBookImages.isEmpty ? const SizedBox(height: 50) : buildGridView(controller.blueBookImages),

          ButtonWithTitle(
              title: 'tax_token'.tr,
              buttonTitle: 'file_attach'.tr,
              onTap: () {
                _openGallery(2)
                    .then((value) => controller.taxTokenImages.value = value);
              }),
          controller.taxTokenImages.isEmpty ? const SizedBox(height: 50) : buildGridView(controller.taxTokenImages),

          ButtonWithTitle(
              title: 'fitness_cert'.tr,
              buttonTitle: 'file_attach'.tr,
              onTap: () {
                _openGallery(3).then(
                    (value) => controller.fitnessCertImages.value = value);
              }),
          controller.fitnessCertImages.isEmpty ? const SizedBox(height: 50) : buildGridView(controller.fitnessCertImages),

          ButtonWithTitle(
              title: 'ins_copy'.tr,
              buttonTitle: 'file_attach'.tr,
              onTap: () {
                _openGallery(4)
                    .then((value) => controller.insuranceImages.value = value);
              }),
          controller.insuranceImages.isEmpty ? const SizedBox(height: 50) : buildGridView(controller.insuranceImages),

          ButtonWithTitle(
              title: 'purchase_rec'.tr,
              buttonTitle: 'file_attach'.tr,
              onTap: () {
                _openGallery(5)
                    .then((value) => controller.purchaseImages.value = value);
              }),
          controller.purchaseImages.isEmpty ? const SizedBox(height: 50) : buildGridView(controller.purchaseImages),

          customButton(context, 'next'.tr, () {
            controller.nextTileNumber.value = 4;
            controller.showPlace.value = true;
          })
        ],
      ),
    );
  }
}
