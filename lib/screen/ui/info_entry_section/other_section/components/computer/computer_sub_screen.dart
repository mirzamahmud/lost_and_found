import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/screen/widgets/card_with_image.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_card.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../../../../../controller/entry_controller/info_entry_controller.dart';
import 'computer_entry_screen.dart';

class ComputerSubScreen extends StatelessWidget {
  ComputerSubScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Scaffold(
          appBar: customAppbar('comp'.tr),
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
                        CardWithImage(
                            image: 'desktop.svg',
                            height: 60.0,
                            width: 60.0,
                            title: 'desktop'.tr,
                            onTap: () => Get.to(() => ComputerEntryScreen())),
                        CustomCard(
                            icon: Icons.laptop,
                            size: 80.0,
                            title: 'laptop'.tr,
                            onTap: () => Get.to(() => ComputerEntryScreen())),
                        CardWithImage(
                            image: 'notebook.svg',
                            height: 60.0,
                            width: 60.0,
                            title: 'notebook'.tr,
                            onTap: () => Get.to(() => ComputerEntryScreen())),
                        CardWithImage(
                            image: 'omni.svg',
                            height: 60.0,
                            width: 60.0,
                            title: 'omni'.tr,
                            onTap: () => Get.to(() => ComputerEntryScreen())),
                        CustomCard(
                            icon: Icons.computer,
                            size: 80.0,
                            title: 'hybrid'.tr,
                            onTap: () => Get.to(() => ComputerEntryScreen())),
                        CardWithImage(
                            image: 'comp_access.svg',
                            height: 60.0,
                            width: 60.0,
                            title: 'com_access'.tr,
                            onTap: () => Get.to(() => ComputerEntryScreen())),
                      ]),
                ),
              ),
            ),
          )),
    );
  }
}
