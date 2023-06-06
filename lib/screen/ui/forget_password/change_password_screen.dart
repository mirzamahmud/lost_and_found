import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_button.dart';
import 'package:online_gd/screen/widgets/textform_with_title.dart';
import 'package:online_gd/theme/g_theme.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('recovery_password'.tr),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'please_enter_new_pass'.tr,
                    style: GTheme.headline.copyWith(fontSize: 18),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormWithTitle(
                    title: 'password'.tr,
                    hintText: 'password'.tr,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'required'.tr;
                      }
                      return null;
                    },
                    onChanged: (val) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormWithTitle(
                    title: 'confirm_password'.tr,
                    hintText: 'confirm_password'.tr,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'required'.tr;
                      }
                      return null;
                    },
                    onChanged: (val) {}),
              ),
              const SizedBox(
                height: 18,
              ),
              customButton(context, 'submit'.tr, () {}),
            ],
          ),
        ),
      ),
    );
  }
}
