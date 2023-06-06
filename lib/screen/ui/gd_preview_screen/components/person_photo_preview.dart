import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';

import '../../../../theme/g_theme.dart';

class PersonPhotoPreview extends StatelessWidget {
  PersonPhotoPreview({Key? key}) : super(key: key);
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
                label: 'person_pictures',
                child: Image.file(File(files[index]!.path))
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
        Column(
          children: [
            Container(
              color: deactivatedColor,
              padding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text(
                      'photo'.tr,
                      style: GTheme.headline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            controller.identityImages.isEmpty ? Container() : buildGridView(controller.identityImages),
          ],
        )
      ],
    );
  }
}
