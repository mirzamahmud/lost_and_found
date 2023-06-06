import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/ui/dashboard.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/theme/g_theme.dart';

class ConfirmationScreen extends StatelessWidget {
  ConfirmationScreen({Key? key, this.gdNumber}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final compController = Get.find<OthersEntryController>();

  final gdNumber;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Get.offAll(() => Dashboard());
        return Future.value(true);
      },
      child: Scaffold(
          appBar: customAppbar('thank'.tr),
          body: Obx(
            () => controller.isLoading.value || compController.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            'info_submit_success'.tr,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: backgroundColor, fontSize: 35),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              gdNumber,
                              style: GTheme.headline1.copyWith(color: errorColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'code_save'.tr,
                              textAlign: TextAlign.center,
                              style: GTheme.headline.copyWith(color: primaryColor, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'police_thanks'.tr,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 20, letterSpacing: 0.25, color: backgroundColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'contact_us'.tr,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: backgroundColor, fontSize: 30),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: customButton(context, 'thank'.tr, () {
                              // Resetting tile value
                              controller.nextTileNumber.value = 1;
                              controller.showIdentity.value = false;
                              controller.showAttachment.value = false;
                              controller.showPlace.value = false;
                              controller.showFullDetails.value = false;
                              controller.showForOthers.value = false;

                              Get.offAll(() => Dashboard());
                            }),
                          )
                        ],
                      ),
                    ),
                  ),
          )),
    );
  }
}
