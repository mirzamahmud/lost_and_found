import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../model/person_model/person_post_model.dart';

class PersonFullDetailsExpansion extends StatelessWidget {
  PersonFullDetailsExpansion({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final controller = Get.find<InfoEntryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: hColumnHorizontal
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              cursorColor: primaryColor,
              maxLines: 5,
              initialValue: controller.personPostModel.storyfullDescription ?? '',
              decoration: InputDecoration(
                  hintText: 'full_details'.tr,
                  hintStyle: const TextStyle(color: hintColor),
                  isDense: true,
                  contentPadding: const EdgeInsets.all(20.0)
              ),
              onChanged: (val) {
                controller.personPostModel.storyfullDescription = val;

              },
            ),
            const SizedBox(height: 20),
            customButton(context, 'next'.tr, () {
    if(_formKey.currentState!.validate()) {
      controller.nextTileNumber.value = 9;
      controller.showForOthers.value = true;
    }
              /*controller.nextTileNumber.value = 9;
              controller.showForOthers.value = true;*/
            })
          ],
        ),
      ),
    );
  }
}
