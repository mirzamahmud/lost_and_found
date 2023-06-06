import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/entry_controller/others_entry_controller.dart';
import 'package:online_gd/controller/entry_controller/info_entry_controller.dart';
import 'package:online_gd/screen/widgets/card_with_image.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/screen/widgets/custom_card.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/constants.dart';

import 'components/bag_entry_screen.dart';
import 'components/card_entry_screen.dart';
import 'components/computer/computer_sub_screen.dart';
import 'components/cosmetics_entry_screen.dart';
import 'components/document_entry_screen.dart';
import 'components/electronics_entry_screen.dart';
import 'components/garment_entry_screen.dart';
import 'components/glass_entry_screen.dart';
import 'components/jewelry_entry_screen.dart';
import 'components/key_entry_screen.dart';
import 'components/mobile_entry_screen.dart';
import 'components/money_entry_screen.dart';
import 'components/pet_entry_screen.dart';
import 'components/shoe_entry_screen.dart';
import 'components/umbrella_entry_screen.dart';
import 'components/watch_entry_screen.dart';

class OtherEntryMainScreen extends StatelessWidget {
  OtherEntryMainScreen({Key? key}) : super(key: key);
  final controller = Get.find<InfoEntryController>();
  final othersController = Get.find<OthersEntryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('others'.tr),
      body: AnimationLimiter(
        child: OrientationBuilder(
          builder: (context, orientation) => Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: hColumnHorizontal, vertical: hColumnVertical),
            child: GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
              children: AnimationConfiguration.toStaggeredList(
                  childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: widget,
                      )),
                  children: [
                    CustomCard(
                        icon: Icons.computer,
                        size: 40.0,
                        title: 'comp'.tr,
                        onTap: () {
                          othersController.documentId.value = 1;
                          Get.to(() => ComputerSubScreen());
                        }),
                    CustomCard(
                        icon: Icons.mobile_friendly,
                        size: 40.0,
                        title: 'mobile'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 4;
                          othersController.documentId.value = 4;
                          othersController.getOSList();
                          othersController.getBrandList();
                          othersController.getTypeListByDocId();
                          Get.to(() => MobileEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.file_copy_sharp,
                        size: 40.0,
                        title: 'doc'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 7;
                          controller.apiPostData['productTypeId'] =
                              Constants.document;
                          othersController.documentId.value = 7;
                          othersController.getTypeListByDocId();
                          Get.to(() => DocumentEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.emoji_nature,
                        size: 40.0,
                        title: 'animal'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 15;
                          othersController.documentId.value = 15;
                          othersController.getTypeListByDocId();
                          Get.to(() => PetEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.kitchen,
                        size: 40.0,
                        title: 'electronics'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 3;
                          othersController.documentId.value = 3;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => ElectronicsEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.credit_card,
                        size: 40.0,
                        title: 'card'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 6;
                          othersController.documentId.value = 6;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => CardEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.vpn_key,
                        size: 40.0,
                        title: 'key'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 5;
                          othersController.documentId.value = 5;
                          othersController.getTypeListByDocId();
                          Get.to(() => KeyEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.money,
                        size: 40.0,
                        title: 'money'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 9;
                          othersController.documentId.value = 9;
                          othersController.getTypeListByDocId();
                          Get.to(() => MoneyEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.shopping_bag,
                        size: 40.0,
                        title: 'bag'.tr,
                        onTap: () {
                          othersController.othersPreviewName.clear();
                          controller.apiPostData['documentTypeId'] = 8;
                          othersController.documentId.value = 8;
                          othersController.getTypeListByDocId();
                          Get.to(() => BagEntryScreen());
                        }),
                    CardWithImage(
                        image: 'diamond.svg',
                        height: 30.0,
                        width: 30.0,
                        title: 'jewelry'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 10;
                          othersController.documentId.value = 10;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => JeweleryEntryScreen());
                        }),
                    CardWithImage(
                        image: 'glass.svg',
                        height: 30.0,
                        width: 30.0,
                        title: 'glass'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 11;
                          othersController.documentId.value = 11;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => GlassEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.checkroom,
                        size: 40.0,
                        title: 'garments'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 12;
                          othersController.documentId.value = 12;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => GarmentsEntryScreen());
                        }),
                    CardWithImage(
                        image: 'shoe.svg',
                        height: 30.0,
                        width: 30.0,
                        title: 'shoe'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 13;
                          othersController.documentId.value = 13;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => ShoeEntryScreen());
                        }),
                    CardWithImage(
                        image: 'cosmetics.svg',
                        height: 30.0,
                        width: 30.0,
                        title: 'cosmetics'.tr,
                        onTap: () {
                          othersController.othersPreviewName.clear();
                          controller.vehiclePreviewName.clear();
                          controller.apiPostData['documentTypeId'] = 14;
                          othersController.documentId.value = 14;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => CosmeticsEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.watch_later,
                        size: 40.0,
                        title: 'watch'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 2;
                          othersController.documentId.value = 2;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => WatchEntryScreen());
                        }),
                    CustomCard(
                        icon: Icons.umbrella,
                        size: 40.0,
                        title: 'umbrella'.tr,
                        onTap: () {
                          controller.apiPostData['documentTypeId'] = 16;
                          othersController.documentId.value = 16;
                          othersController.getTypeListByDocId();
                          othersController.getDocBrandListByDocId();
                          Get.to(() => UmbrellaEntryScreen());
                        }),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
