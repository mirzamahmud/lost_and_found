import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../info_entry_section/vehicle_section/vehicle_entry_main_screen.dart';

class FullDetailsScreen extends StatelessWidget {
  FullDetailsScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final compController = Get.put(OthersEntryController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: hColumnHorizontal),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: TextFormField(
              cursorColor: primaryColor,
              maxLines: 5,
              initialValue: controller.vehiclePreviewName['fullDetails'] ?? '',
              decoration: InputDecoration(
                  hintText: 'full_details'.tr,
                  isDense: true,
                  contentPadding: const EdgeInsets.all(20.0)),
              validator: (value) {
                // Can't give this word in full description
                /*String theftString = "theft";
                String theftStringBn = "চুরি";
                if(value?.toLowerCase().contains(theftString) == true){
                  return 'Can't give this word in full description';
                }
                if(value?.contains(theftStringBn) == true){
                  return 'সম্পূর্ণ বর্ণনা চুরি শব্দটি দিতে পারবেন না ';
                }*/

                if (value!.isEmpty) {
                  return 'required'.tr;
                }
                return null;
              },
              onChanged: (val) {
                if (controller.productType.value.contains('vehicle')) {
                  controller.apiPostData['storyfullDescription'] = val;
                  controller.vehiclePreviewName['fullDetails'] = val;
                } else if (controller.productType.value.contains('man')) {
                } else {
                  if (compController.documentId.value == 7) {
                    controller.apiPostData['storyfullDescription'] = val;
                    controller.vehiclePreviewName['fullDetails'] = val;
                  } else {
                    controller.apiPostData['storyFullDescription'] = val;
                    controller.apiPostData['documentDescription'] = val;
                    controller.vehiclePreviewName['fullDetails'] = val;
                  }
                }
              },
            ),
          ),
          const SizedBox(height: 20),
          customButton(context, 'next'.tr, () {
            if (_formKey.currentState!.validate()) {
              controller.nextTileNumber.value = 6;
              controller.showForOthers.value = true;
            }

            /*controller.nextTileNumber.value = 6;
            controller.showForOthers.value = true;*/
          })
        ],
      ),
    );
  }
}
