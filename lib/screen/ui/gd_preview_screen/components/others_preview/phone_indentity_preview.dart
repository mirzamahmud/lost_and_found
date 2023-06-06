import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mime/mime.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';

import '../../../../../controller/entry_controller/info_entry_controller.dart';
import '../../../../../theme/g_theme.dart';

class PhoneIdentityPreview extends StatelessWidget {
  PhoneIdentityPreview({Key? key, this.identityInfoValue}) : super(key: key);
  final identityInfoValue;
  final controller = Get.find<InfoEntryController>();

// Checking file type
  bool isPdf(String path) {
    final mimeType = lookupMimeType(path);

    return mimeType == 'application/pdf';
  }

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
              child: isPdf(files[index]!.path)
                  ? Image.asset('assets/images/pdf.png')
                  : Image.file(File(files[index]!.path)),
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
          color: deactivatedColor,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  'identity_info'.tr,
                  style: GTheme.headline,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(title: 'identity_info'.tr, data: identityInfoValue),
              const SizedBox(height: 10.0),
              Text('memo_image'.tr, style: GTheme.title),
              controller.memoImages.isEmpty
                  ? const SizedBox(height: 20)
                  : buildGridView(controller.memoImages),
              const SizedBox(
                height: 10,
              ),
              Text('phone_box_image'.tr, style: GTheme.title),
              controller.memoImages.isEmpty
                  ? const SizedBox(height: 50)
                  : buildGridView(controller.phonBoxImages),
              const SizedBox(
                height: 10,
              ),
              Text('phone_image'.tr, style: GTheme.title),
              controller.phoneImages.isEmpty
                  ? const SizedBox(height: 50)
                  : buildGridView(controller.phoneImages),
            ],
          ),
        )
      ],
    );
  }
}
