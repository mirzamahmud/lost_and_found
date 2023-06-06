import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mime/mime.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/button_with_title.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../info_entry_section/vehicle_section/vehicle_entry_main_screen.dart';

class AttachmentPreview extends StatefulWidget {
  const AttachmentPreview({Key? key}) : super(key: key);

  @override
  State<AttachmentPreview> createState() => _AttachmentScreenState();
}

class _AttachmentScreenState extends State<AttachmentPreview> {
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
        // physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children: List.generate(files.length, (index) {
          return Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(4.0),
            width: 80,
            height: 80,
            decoration: BoxDecoration(border: Border.all(color: primaryColor)),
            child: Semantics(
              child: InkWell(
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Container(
          width: double.infinity,
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'attachment'.tr,
            textAlign: TextAlign.center,
            style: GTheme.headline,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text('blue_book'.tr, style: GTheme.title),
         const SizedBox(
          height: 10,
        ),
        controller.blueBookImages.isEmpty
            ?  const SizedBox(height: 50,
        )
            : buildGridView(controller.blueBookImages),
        const SizedBox(
          height: 10,
        ),
        Text('tax_token'.tr, style: GTheme.title),
        const SizedBox(
          height: 10,
        ),
        controller.taxTokenImages.isEmpty
            ? const SizedBox(height: 50)
            : buildGridView(controller.taxTokenImages),
        const SizedBox(
          height: 10,
        ),
        Text('fitness_cert'.tr, style: GTheme.title),
        const SizedBox(
          height: 10,
        ),
        controller.fitnessCertImages.isEmpty
            ? const SizedBox(height: 50)
            : buildGridView(controller.fitnessCertImages),
        const SizedBox(
          height: 10,
        ),
        Text('ins_copy'.tr, style: GTheme.title),
        const SizedBox(
          height: 10,
        ),
        controller.insuranceImages.isEmpty
            ? const SizedBox(height: 50)
            : buildGridView(controller.insuranceImages),
        const SizedBox(
          height: 10,
        ),
        Text('purchase_rec'.tr, style: GTheme.title),
        const SizedBox(
          height: 10,
        ),
        controller.purchaseImages.isEmpty
            ? const SizedBox(height: 50)
            : buildGridView(controller.purchaseImages),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
