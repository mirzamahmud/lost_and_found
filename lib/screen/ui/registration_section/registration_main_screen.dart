import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/screen/ui/registration_section/registration_stepper_screen.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_card.dart';
import 'package:online_gd/theme/g_theme.dart';

class RegistrationMainScreen extends StatelessWidget {
  RegistrationMainScreen({Key? key}) : super(key: key);
  final controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('registration'.tr),
      body: AnimationLimiter(
        child: OrientationBuilder(
          builder: (context, orientation) => Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: hColumnHorizontal, vertical: hColumnVertical),
            child: GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              children: AnimationConfiguration.toStaggeredList(
                  childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: widget,
                      )),
                  children: [
                    CustomCard(
                        image: 'assets/images/nid.png',
                        title: 'nid'.tr,
                        onTap: () {
                          controller.registrationData['Citizenship'] = 'Bangladeshi';
                          controller.registrationData['NationalIdentityType'] = '1';
                          Get.to(() => const RegistrationStepperScreen());
                        }),
                    CustomCard(
                        image: 'assets/images/birth.png',
                        title: 'birth_cert'.tr,
                        onTap: () {
                          Get.snackbar('warning'.tr, 'alert'.tr, snackPosition: SnackPosition.BOTTOM);
                        }),
                    CustomCard(
                        image: 'assets/images/passport.png',
                        title: 'passport'.tr,
                        onTap: () {
                          Get.snackbar('warning'.tr, 'alert'.tr, snackPosition: SnackPosition.BOTTOM);
                        }),
                    CustomCard(
                        image: 'assets/images/passport.png',
                        title: 'foreign_passport'.tr,
                        onTap: () {
                          Get.snackbar('warning'.tr, 'alert'.tr, snackPosition: SnackPosition.BOTTOM);
                        }),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
