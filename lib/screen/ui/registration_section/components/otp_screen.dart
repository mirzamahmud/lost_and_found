import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/screen/ui/dashboard.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/service/remote_services.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../login/login_screen.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final controller = Get.find<RegistrationController>();
  final prefs = Get.find<MyPrefs>();

  late Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            controller.isTimerFinished.value = true;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppbar('otp'.tr),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      '4_digit_text'.tr,
                      textAlign: TextAlign.center,
                      style: GTheme.title.copyWith(color: errorColor),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'enter_one_time'.tr,
                      textAlign: TextAlign.center,
                      style: GTheme.headline,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: width / 2,
                      child: TextFormField(
                        cursorColor: primaryColor,
                        keyboardType: TextInputType.number,
                        style: GTheme.subtitle,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'required'.tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'otp'.tr,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 10.0)),
                        onChanged: (val) {
                          controller.submittedOTP.value = val.trim();
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('00:$_start'),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('get'.tr),
                        const SizedBox(width: 6),
                        TextButton(
                            onPressed: controller.isTimerFinished.value
                                ? () {
                                    _start = 60;
                                    startTimer();
                                  }
                                : null,
                            child: Text('resend'.tr)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'contact_us'.tr,
                      textAlign: TextAlign.center,
                      style: GTheme.title,
                    ),
                    const SizedBox(height: 20),
                    customButton(context, 'registration'.tr, () {
                      // checking the input otp with api otp
                      if (controller.submittedOTP.value ==
                          controller.registrationData['otp']) {
                        RemoteServices.upload(controller.username.value,
                            controller.captureImagePath.value);
                        // sending registration data with otp
                        controller.registrationApi();
                        if (controller.regSuccess.value) {
                          Get.defaultDialog(
                              title: 'reg_success'.tr,
                              middleText: '',
                              textConfirm: 'login'.tr,
                              confirmTextColor: blackColor,
                              onConfirm: () {
                                Get.offAll(() => Dashboard());
                              });
                        }
                      }
                    })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
