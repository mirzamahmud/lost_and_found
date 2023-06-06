import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/login_controller.dart';
import 'package:online_gd/screen/ui/registration_section/registration_main_screen.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import 'contact_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final controller = Get.put(LoginController());
  final prefs = Get.find<MyPrefs>();

  updateLanguage() {
    if (prefs.language.val) {
      Get.updateLocale(const Locale('en', 'US'));
    } else {
      Get.updateLocale(const Locale('bn', 'BD'));
    }
  }

  void submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    if (prefs.remember.val == true) {
      prefs.username.val = controller.username.value;
      prefs.password.val = controller.password.value;
    }
    controller.fetchAuthData();
  }

  //password show hide
  bool _isHidden = true;
  bool _isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith((states) => secondaryColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: Text('contact'.tr, style: GTheme.subtitle),
                      onPressed: () {
                        Get.to(() => const ContactScreen());
                      },
                    ),
                    const Spacer(),
                    FlutterSwitch(
                        activeText: 'বাংলা',
                        inactiveText: 'English',
                        value: prefs.language.val,
                        valueFontSize: 12.0,
                        activeColor: primaryColor,
                        width: 85,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            prefs.language.val = val;
                          });
                          updateLanguage();
                        })
                  ],
                ),
                const SizedBox(height: 60),
                Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                  width: 150,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: primaryColor,
                          style: GTheme.subtitle,
                          initialValue: prefs.remember.val ? prefs.username.val : '',
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'username'.tr,
                            prefixIcon: const Icon(Icons.account_circle, color: primaryColor),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This field is required';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            controller.username.value = value!.trim();
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          cursorColor: primaryColor,
                          style: GTheme.subtitle,
                          initialValue: prefs.remember.val ? prefs.password.val : '',
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            hintText: 'password'.tr,
                            prefixIcon: const Icon(Icons.lock, color: primaryColor),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isHidden = !_isHidden;
                                  });
                                },
                                icon: Icon(
                                  _isHidden ? Icons.visibility : Icons.visibility_off,
                                  color: blackColor,
                                )),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This field is required';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            controller.password.value = value!.trim();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                CheckboxListTile(
                    contentPadding: const EdgeInsets.only(left: 4),
                    value: prefs.remember.val,
                    title: Text('remember_password'.tr),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: primaryColor,
                    onChanged: (val) {
                      setState(() {
                        prefs.remember.val = val!;
                        _isRemember = val;
                      });
                    }),
                customButton(context, 'login'.tr, submit),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.to(() => RegistrationMainScreen());
                        },
                        child: Text(
                          'registration'.tr,
                          style: const TextStyle(color: linkColor),
                        )),
                    const Text('|'),
                    TextButton(
                        onPressed: () {
                          Get.snackbar('warning'.tr, 'alert'.tr,
                              colorText: Colors.white, snackPosition: SnackPosition.BOTTOM);
                          // Get.to(() => ForgetPassword());
                        },
                        child: Text('forgot_password'.tr, style: const TextStyle(color: linkColor))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
