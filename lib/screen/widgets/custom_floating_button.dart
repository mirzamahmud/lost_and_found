import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/ui/dashboard.dart';
import 'package:online_gd/theme/g_theme.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showFab = MediaQuery.of(context).viewInsets.bottom != 0;
    return Visibility(
      visible: !showFab,
      child: FloatingActionButton(
          backgroundColor: secondaryColor,
          child: const Icon(Icons.home),
          onPressed: () => Get.offAll(() => Dashboard())),
    );
  }
}
