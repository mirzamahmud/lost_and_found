import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_gd/screen/widgets/custom_appbar.dart';
import 'package:online_gd/service/my_prefs.dart';
import 'package:online_gd/service/remote_services.dart';
import 'package:online_gd/theme/g_theme.dart';

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({Key? key}) : super(key: key);
  final prefs = Get.find<MyPrefs>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('profile'.tr),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: RemoteServices.baseUrl! + prefs.userImage.val,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Image.asset(
                      'assets/images/image-holder.png',
                    ),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'profile_details'.tr,
                textAlign: TextAlign.start,
                style: GTheme.headline.copyWith(color: primaryColor),
              ),
              Card(
                elevation: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    TextFormEditTitle(
                      title: 'name'.tr,
                      hintText: prefs.username.val,
                      onChanged: (val) {},
                    ),
                    TextFormEditTitle(
                      title: 'email'.tr,
                      hintText: prefs.email.val,
                      onChanged: (val) {},
                    ),
                    /*TextFormEditTitle(
                      title: 'password'.tr,
                      hintText: 'password'.tr,
                      onChanged: (val) {},
                    ),*/
                    TextFormEditTitle(
                      title: 'phone_no'.tr,
                      hintText: prefs.phone.val,
                      onChanged: (val) {},
                    ),
                    TextFormEditTitle(
                      title: 'country_name'.tr,
                      hintText: prefs.country.val,
                      onChanged: (val) {},
                    ),
                    TextFormEditTitle(
                      title: 'nid_no'.tr,
                      hintText: prefs.nid.val,
                      onChanged: (val) {},
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFormEditTitle extends StatelessWidget {
  TextFormEditTitle(
      {Key? key,
      this.title,
      this.hintText,
      required this.onChanged,
      this.secondOnChanged})
      : super(key: key);
  final title;
  final hintText;
  Function(String) onChanged;
  Function()? secondOnChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(title, style: GTheme.subtitle),
          ),
          const SizedBox(width: 4),
          Expanded(
            flex: 3,
            child: TextFormField(
              cursorColor: primaryColor,
              enabled: false,
              style: GTheme.subtitle,
              decoration: InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0)),
              onChanged: onChanged,
            ),
          ),
          /*const SizedBox(width: 6),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: const Icon(Icons.edit, color: primaryColor),
              onPressed: secondOnChanged,
            ),
          ),*/
        ],
      ),
    );
  }
}
