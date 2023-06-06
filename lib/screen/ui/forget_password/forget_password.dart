import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/forget_password_controller.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';

import '../../../model/security_question_model.dart';
import '../gd_preview_screen/components/others_preview/bag_info_preview.dart';
import '../gd_preview_screen/components/others_preview/cosmetics_info_preview.dart';
import '../gd_preview_screen/components/others_preview/electronics_info_preview.dart';
import '../gd_preview_screen/components/others_preview/mobile_info_preview.dart';
import '../gd_preview_screen/components/others_preview/money_info_preview.dart';
import '../gd_preview_screen/components/place_time_preview.dart';
import '../gd_preview_screen/components/vehicle_identity_preview.dart';
import '../login/contact_screen.dart';
import 'change_password_screen.dart';
import 'forget_password_otp.dart';
import 'forget_password_otp.dart';
import 'forget_password_otp.dart';
import '../registration_section/components/otp_screen.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  final controller = Get.put(RegistrationController());
  final forgetController = Get.put(ForgetPasswordController());
  final prefs = Get.find<MyPrefs>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('recovery_password'.tr),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormWithTitle(
                      title: 'mobile_number'.tr,
                      hintText: 'mobile_number'.tr,
                      keyboard: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      onChanged: (val) {
                        forgetController.forgetPasswordMap['UserName'] = val;
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: DropdownSearch<SecurityQuestions>(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: 'security_ques_1'.tr,
                        hintStyle: const TextStyle(color: Colors.black),
                      ),
                      items: controller.securityQuestionList1,
                      validator: (value) {
                        if (value == null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      itemAsString: (SecurityQuestions? data) =>
                          prefs.language.val
                              ? data!.questionName.toString()
                              : data!.questionNameBn.toString(),
                      onChanged: (data) {
                        forgetController
                                .forgetPasswordMap['secuirityQuestionId'] =
                            data!.id.toString();
                      }),
                ),
                TextFormWithTitle(
                    title: 'your_answer'.tr,
                    hintText: 'your_answer'.tr,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'required'.tr;
                      }
                      return null;
                    },
                    onChanged: (val) {
                      forgetController.forgetPasswordMap['secuirityQuestionAns'] =
                          val;
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: DropdownSearch<SecurityQuestions2>(
                      mode: Mode.MENU,
                      showClearButton: true,
                      dropdownSearchDecoration: InputDecoration(
                        hintText: 'security_ques_2'.tr,
                        hintStyle: const TextStyle(color: Colors.black),
                      ),
                      items: controller.securityQuestionList2,
                      validator: (value) {
                        if (value == null) {
                          return 'required'.tr;
                        }
                        return null;
                      },
                      itemAsString: (SecurityQuestions2? data) =>
                          prefs.language.val
                              ? data!.questionName.toString()
                              : data!.questionNameBn.toString(),
                      onChanged: (data) {
                        forgetController
                                .forgetPasswordMap['secuirityQuestionId2'] =
                            data!.id.toString();
                      }),
                ),
                TextFormWithTitle(
                    title: 'your_answer'.tr,
                    hintText: 'your_answer'.tr,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'required'.tr;
                      }
                      return null;
                    },
                    onChanged: (val) {
                      forgetController
                          .forgetPasswordMap['secuirityQuestionAns2'] = val;
                    }),
                const SizedBox(
                  height: 18,
                ),
                customButton(context, 'submit'.tr, () {
                 if(_formKey.currentState!.validate()){
                   forgetController.forgetPasswordSecurityCheckApi();
                   // Get.to(() => ForgetPasswordOtp());
                 }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
