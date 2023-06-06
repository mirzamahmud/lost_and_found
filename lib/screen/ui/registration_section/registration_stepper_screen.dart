import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/screen/ui/login/login_screen.dart';
import 'package:online_gd/screen/ui/registration_section/components/capture_image_screen.dart';
import 'package:online_gd/screen/ui/registration_section/components/other_information_screen.dart';
import 'package:online_gd/screen/ui/registration_section/components/otp_screen.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/theme/g_theme.dart';

import 'components/nid_first_screen.dart';

class RegistrationStepperScreen extends StatefulWidget {
  const RegistrationStepperScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationStepperScreen> createState() =>
      _RegistrationStepperScreenState();
}

class _RegistrationStepperScreenState extends State<RegistrationStepperScreen> {
  final List<GlobalKey<FormState>> _formKeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>()
  ];

  final regController = Get.find<RegistrationController>();
  int _activeCurrentStep = 0;

  List<Step> stepList() => [
        Step(
            state: _activeCurrentStep <= 0
                ? StepState.editing
                : StepState.complete,
            isActive: _activeCurrentStep >= 0,
            title: Text('info'.tr),
            content: Form(key: _formKeys[0], child: NIDFirstScreen())),
        Step(
            state: _activeCurrentStep <= 1
                ? StepState.editing
                : StepState.complete,
            isActive: _activeCurrentStep >= 1,
            title: Text('photo'.tr),
            content:
                Form(key: _formKeys[1], child: const CaptureImageScreen())),
        Step(
            state: _activeCurrentStep <= 2
                ? StepState.editing
                : StepState.complete,
            isActive: _activeCurrentStep >= 2,
            title: Text('details'.tr),
            content: Form(key: _formKeys[2], child: OtherInformationScreen())),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('registration'.tr),
      body: regController.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Stepper(
              type: StepperType.horizontal,
              currentStep: _activeCurrentStep,
              controlsBuilder: (BuildContext context, ControlsDetails details) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextButton(
                          onPressed: details.onStepCancel,
                          child: Text('back'.tr, style: GTheme.title),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextButton(
                          onPressed: details.onStepContinue,
                          child: Text('next'.tr, style: GTheme.title),
                        ),
                      ),
                    )
                  ],
                );
              },
              steps: stepList(),
              // onStepContinue takes us to the next step
              onStepContinue: () {
                if (regController.isNidPresent.value) {
                  setState(() {
                    _activeCurrentStep = 0;
                  });
                } else {
                  setState(() {
                    if (!regController.isNidClicked.value) {
                      Get.snackbar('nid_bottom_error'.tr, '',
                          colorText: blackColor,
                          snackPosition: SnackPosition.BOTTOM);
                    } else if (_formKeys[_activeCurrentStep]
                        .currentState!
                        .validate()) {
                      if (_activeCurrentStep < 1) {
                        _activeCurrentStep += 1;
                      } else if (_activeCurrentStep == 1) {
                        if(regController.captureImagePath.value.isEmpty) {
                         Get.snackbar(
                             'warning'.tr,
                             'no_face'.tr,
                           snackPosition: SnackPosition.BOTTOM,
                           colorText: blackColor
                         );
                        } else {
                          _activeCurrentStep += 1;
                        }
                      }
                      else if (_activeCurrentStep == 2) {
                        regController.registrationApi();

                        if (regController.error.isEmpty) {
                          Get.to(() => OTPScreen());
                        } else {
                          Get.defaultDialog(
                              title: regController.error.value,
                              middleText: '',
                              textConfirm: 'OK',
                              confirmTextColor: blackColor,
                              onConfirm: () {
                                Get.offAll(() => const LoginScreen());
                              });
                        }
                      }
                    }
                  });
                }
              },
              // onStepCancel takes us to the previous step
              onStepCancel: () {
                if (_activeCurrentStep == 0) {
                  return;
                }
                setState(() {
                  _activeCurrentStep -= 1;
                });
              },
            ),
    );
  }
}
