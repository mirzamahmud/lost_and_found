import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/registration_controller.dart';
import 'package:online_gd/model/security_question_model.dart';
import 'package:online_gd/screen/widgets/dropdown_with_title.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/constants.dart';
import 'package:password_strength/password_strength.dart';

class OtherInformationScreen extends StatefulWidget {
  OtherInformationScreen({Key? key}) : super(key: key);

  @override
  State<OtherInformationScreen> createState() => _OtherInformationScreenState();
}

class _OtherInformationScreenState extends State<OtherInformationScreen> {
  final controller = Get.find<RegistrationController>();
  final _passController = TextEditingController();
  final prefs = Get.find<MyPrefs>();

  // Password strength
  late String _password;
  double _strength = 0;
  bool _isStrong = false;
  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  String _displayText = 'Please enter a password';

  void _checkPassword(String value) {
    _password = value.trim();

    if (_passController.text.isEmpty) {
      setState(() {
        _strength = 0;
        _displayText = 'Please enter you password';
      });
    } else if (_password.length < 6) {
      setState(() {
        _strength = 1 / 4;
        _displayText = 'Your password is too short';
      });
    } else if (_password.length < 8) {
      setState(() {
        _strength = 2 / 4;
        _displayText = 'Your password is acceptable but not strong';
      });
    } else {
      if (!letterReg.hasMatch(_password) || !numReg.hasMatch(_password)) {
        setState(() {
          // Password length >= 8
          // But doesn't contain both letter and digit characters
          _strength = 3 / 4;
          _displayText = 'Your password is strong';
        });
      } else {
        // Password length >= 8
        // Password contains both letter and digit characters
        setState(() {
          _strength = 1;
          _displayText = 'Your password is great';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Strong: $_isStrong');

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text('mobile'.tr, style: GTheme.subtitle),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 3,
                child: TextFormField(
                  cursorColor: primaryColor,
                  style: GTheme.subtitle,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required'.tr;
                    } else if (value.length < 11) {
                      return 'mobile_check'.tr;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: '11_mobile'.tr,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10.0)),
                  onChanged: (val) {
                    controller.registrationData['PhoneNumber'] = val.trim();
                    controller.registrationData['UserName'] = val.trim();
                    controller.username.value = val.trim();
                  },
                ),
              ),
            ],
          ),
        ),
        DropdownWithTitle(
          title: 'mobile_operator'.tr,
          showSearch: false,
          dropdownList: [
            'robi'.tr,
            'grameen'.tr,
            'teletalk'.tr,
            'airtel'.tr,
            'banglalink'.tr,
          ],
          saveValue: (value) {
            controller.registrationData['operator'] = value ?? '';
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text('email'.tr, style: GTheme.subtitle),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 3,
                child: TextFormField(
                  cursorColor: primaryColor,
                  style: GTheme.subtitle,
                  validator: (value) {
                    // Check if this field is empty
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }

                    // using regular expression
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return "Please enter a valid email address";
                    }

                    // the email is valid
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'email'.tr,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10.0)),
                  onChanged: (val) {
                    controller.registrationData['email'] = val;
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text('password'.tr, style: GTheme.subtitle),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 3,
                child: Obx(() => TextFormField(
                      style: GTheme.subtitle,
                      controller: _passController,
                      obscureText: !controller.showPassword.value,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              controller.showPassword.value =
                                  !controller.showPassword.value;
                            },
                            icon: Icon(
                              controller.showPassword.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: blackColor,
                            )),
                        hintText: 'password'.tr,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required'.tr;
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        _checkPassword(value);
                        controller.registrationData['Password'] = value.trim();
                        if (_strength == 4 / 4) {
                          setState(() {
                            _isStrong = true;
                          });
                        } else {
                          setState(() {
                            _isStrong = false;
                          });
                        }
                      },
                    )),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: _strength,
          backgroundColor: Colors.grey[300],
          color: _strength <= 1 / 4
              ? Colors.red
              : _strength == 2 / 4
                  ? Colors.yellow
                  : _strength == 3 / 4
                      ? Colors.blue
                      : Colors.green,
        ),
        const SizedBox(height: 4),
        Text(
          'password_text'.tr,
          style: GTheme.subtitle.copyWith(color: deactivatedColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text('confirm_password'.tr, style: GTheme.subtitle),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 3,
                child: Obx(() => TextFormField(
                      style: GTheme.subtitle,
                      obscureText: !controller.showPassword.value,
                      decoration: InputDecoration(
                        hintText: 'confirm_password'.tr,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required'.tr;
                        } else if (value != _passController.text) {
                          return 'Password not matched';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        if (!_isStrong) {
                          Get.defaultDialog(
                              title: 'warning'.tr,
                              titleStyle: const TextStyle(color: errorColor),
                              middleText: 'pass_strength'.tr,
                              textConfirm: 'Ok',
                              confirmTextColor: blackColor,
                              onConfirm: () {
                                Get.back();
                              });
                        }
                        controller.registrationData['ConfirmPassword'] = value;
                      },
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(height: 7),
        const Divider(
          thickness: 3,
          //color: Colors.black,
        ),
        const SizedBox(height: 7),
        Text(
          'security_text'.tr,
          style: GTheme.subtitle.copyWith(color: deactivatedColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Obx(
            () => controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : DropdownSearch<SecurityQuestions>(
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
                      controller.registrationData['secuirityQuestionId'] = 1;
                    }),
          ),
        ),
        TextFormWithTitle(
            title: 'your_answer'.tr,
            hintText: 'your_answer'.tr,
            enabled: _isStrong,
            validator: (value) {
              if(value!.isEmpty) {
                return 'required'.tr;
              }
              return null;
            },
            onChanged: (val) {
              controller.registrationData['secuirityQuestionAns'] = val.trim();
            }),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Obx(
            () => controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : DropdownSearch<SecurityQuestions2>(
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
                      controller.registrationData['secuirityQuestionId2'] = 1;
                    }),
          ),
        ),
        TextFormWithTitle(
            title: 'your_answer'.tr,
            hintText: 'your_answer'.tr,
            enabled: _isStrong,
            validator: (value) {
              if(value!.isEmpty) {
                return 'required'.tr;
              }
              return null;
            },
            onChanged: (val) {
              controller.registrationData['secuirityQuestionAns2'] = val.trim();
            }),
        const SizedBox(height: 20)
      ],
    );
  }
}
