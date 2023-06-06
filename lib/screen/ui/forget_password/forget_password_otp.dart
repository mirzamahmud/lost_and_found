import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/theme/g_theme.dart';

class ForgetPasswordOtp extends StatefulWidget {
  ForgetPasswordOtp({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordOtp> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<ForgetPasswordOtp> {
  final controller = Get.find<RegistrationController>();
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
    return Scaffold(
      appBar: customAppbar('otp'.tr),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4_digit_text'.tr,
                textAlign: TextAlign.center,
                style: GTheme.title.copyWith(color: errorColor),
              ),
              const SizedBox(height: 12),
              Text(
                'otpmsg'.tr,
                textAlign: TextAlign.center,
                style: GTheme.headline,
              ),
              const SizedBox(height: 12),
              SizedBox(
                child: OtpTextField(
                  fieldWidth: 45,
                  numberOfFields: 4,
                  borderColor: const Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  onSubmit: (String verificationCode) {
                    //todo go to password screen active
                    Get.snackbar('go to ChangePassword() screen', 'alert',
                        colorText: Colors.white, snackPosition: SnackPosition.BOTTOM);
                    // Get.to(() => ChangePassword());
                  }, // end onSubmit
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
                  Obx(() => TextButton(
                      onPressed: controller.isTimerFinished.value
                          ? () {
                              startTimer();
                            }
                          : null,
                      child: Text('resend'.tr)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
