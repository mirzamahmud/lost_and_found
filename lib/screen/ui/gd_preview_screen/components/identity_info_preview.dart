import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';

import '../../../../theme/g_theme.dart';

class IdentityInfoPreview extends StatefulWidget {
  const IdentityInfoPreview({Key? key, this.identityInfoValue}) : super(key: key);
  final identityInfoValue;

  @override
  State<IdentityInfoPreview> createState() => _IdentityInfoPreviewState();
}

class _IdentityInfoPreviewState extends State<IdentityInfoPreview> {
  final controller = Get.find<OthersEntryController>();


  Widget buildGridView(List<File?> files) {
    return SizedBox(
      height: 150,
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(controller.otherImageAndDocList.length, (index) {
          return Container(
            margin: const EdgeInsets.all(4.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: primaryColor)),
            child: Semantics(
                label: 'other_pictures',
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
        Container(
          color: deactivatedColor,
          padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextWithTitle(title: 'identity_info'.tr, data: widget.identityInfoValue),
              const SizedBox(height: 20.0),
              Text('photo'.tr, style: GTheme.title),
    controller.otherIdentityImage.isEmpty ? Container() : buildGridView(controller.otherIdentityImage),
            ],
          ),
        )
      ],
    );
  }
}
