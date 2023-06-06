import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:online_gd/screen/ui/login/login_screen.dart';
import 'package:online_gd/screen/ui/navigation_drawer/components/personal_info_screen.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/theme/g_theme.dart';

import 'components/custom_drawer_body_item.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({Key? key}) : super(key: key);
  final prefs = Get.find<MyPrefs>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    // controller.passwordChange();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            height: 230,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/background.jpg',
                ),
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(prefs.fullname.val,
                        style: GTheme.headline.copyWith(color: whiteColor)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(prefs.email.val,
                        style: GTheme.title.copyWith(color: whiteColor)),
                  ),
                ]),
          ),
          const SizedBox(height: 20),
          customDrawerBodyItem(
              icon: Icons.account_circle,
              text: 'profile'.tr,
              onTap: () {
                Get.back();
                Get.to(() => PersonalInfoScreen());
              }),
          customDrawerBodyItem(
              icon: Icons.logout,
              text: 'logout'.tr,
              onTap: () {
                Get.defaultDialog(
                    title: 'logout'.tr,
                    titleStyle: const TextStyle(color: errorColor),
                    middleText: 'logout_text'.tr,
                    textConfirm: 'exit'.tr,
                    textCancel: 'cancel'.tr,
                    confirmTextColor: blackColor,
                    onConfirm: () {
                      prefs.token.val = '';
                      Get.offAll(() => const LoginScreen());
                    },
                    onCancel: () => Get.back());
              })
        ],
      ),
    );
  }
}
