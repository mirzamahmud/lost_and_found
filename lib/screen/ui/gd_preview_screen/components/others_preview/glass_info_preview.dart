import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/forget_password_controller.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/text_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../controller/entry_controller/others_entry_controller.dart';

class GlassInfoPreview extends StatelessWidget {
  GlassInfoPreview({Key? key}) : super(key: key);
  final othersController = Get.find<OthersEntryController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: deactivatedColor,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Text('glass_info'.tr, style: GTheme.headline),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: hColumnHorizontal, vertical: hColumnVertical),
          child: Column(
            children: [
              TextWithTitle(
                  title: 'glass_type'.tr,
                  data: othersController.othersPreviewName['garmentsType']  ?? ''),
              TextWithTitle(
                  title: 'glass_shape'.tr,
                  data: othersController.othersPreviewName['glassShap']  ?? ''),
              TextWithTitle(
                  title: 'brand'.tr,
                  data: othersController.othersPreviewName['glassBrand']  ?? ''),
              TextWithTitle(
                  title: 'color'.tr,
                  data: othersController.othersPreviewName['colorName']  ?? ''),
              TextWithTitle(
                  title: 'shape'.tr,
                  data: othersController.othersPreviewName['glassShap']  ?? ''),
              TextWithTitle(
                  title: 'model'.tr,
                  data: othersController.othersPreviewName['glassModel']  ?? ''),
              TextWithTitle(
                  title: 'serial_no'.tr,
                  data: othersController.othersPreviewName['glassSerial']  ?? ''),
              TextWithTitle(
                  title: 'amount'.tr,
                  data: othersController.othersPreviewName['glassAmount']  ?? ''),
            ],
          ),
        ),
      ],
    );
  }
}
