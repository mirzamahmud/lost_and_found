import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/controller/dashboard_controller.dart';
import 'package:online_gd/screen/ui/report_screen/components/details_web_view.dart';
import 'package:online_gd/screen/ui/report_screen/components/report_card.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/theme/g_theme.dart';

import '../../widgets/custom_floating_button.dart';

class GDReportScreen extends StatelessWidget {
  GDReportScreen({Key? key}) : super(key: key);
  final controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('report_result'.tr),
      body: Obx(
        () => controller.topDetailsList.isEmpty && !controller.isLoading.value
            ? const Center(
                child: Text('Sorry, no data found!', style: GTheme.title))
            : controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: controller.topDetailsList.length,
                    itemBuilder: (BuildContext context, index) => InkWell(
                      onTap: () {
                        Get.to(() => const DetailsWebView(), arguments: controller.topDetailsList[index].id);
                      },
                      child: (
                          ReportCard(
                        detailsData: controller.topDetailsList[index],
                      )),
                    ),
                  ),
      ),
      floatingActionButton: const CustomFloatingButton(),
    );
  }
}
