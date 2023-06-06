import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';

import '../../../theme/g_theme.dart';
import '../../widgets/custom_card.dart';
import 'package:open_mail_app/open_mail_app.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('contact_appbar'.tr),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 45),
              Column(
                children: [
                  Text(
                    'contact_heading'.tr,
                    textAlign: TextAlign.center,
                    style: GTheme.headline,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'contact_info'.tr,
                    textAlign: TextAlign.center,
                    style: GTheme.title.copyWith(color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomCard(
                          icon: Icons.call,
                          size: 65.0,
                          title: 'LiveCall',
                          onTap: () {
                            Get.snackbar('warning'.tr, 'alert'.tr,
                                colorText: blackColor, snackPosition: SnackPosition.BOTTOM);
                          }),
                      const SizedBox(width: 60),
                      CustomCard(
                          icon: Icons.chat,
                          size: 65.0,
                          title: 'LiveChat',
                          onTap: () {
                            Get.snackbar('warning'.tr, 'alert'.tr,
                                colorText: blackColor, snackPosition: SnackPosition.BOTTOM);
                          })
                    ],
                  ),
                  const SizedBox(height: 8),
                  CustomCard(
                    icon: Icons.email,
                    size: 65.0,
                    title: 'Email',
                    onTap: () async {
                      var apps = await OpenMailApp.getMailApps();

                      if (apps.isEmpty) {
                        showNoMailAppsDialog(context);
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return MailAppPickerDialog(
                              mailApps: apps,
                              emailContent: EmailContent(
                                to: [
                                  'lostandfound@police.gov.bd',
                                ],
                                subject:
                                    'Contact related email for Online Gd apps',
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void showNoMailAppsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Open Mail App"),
          content: const Text("No mail apps installed"),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}
