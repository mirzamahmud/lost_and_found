import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:online_gd/screen/ui/dashboard.dart';
import 'package:online_gd/screen/ui/login/login_screen.dart';
import 'package:online_gd/screen/ui/no_internet.dart';
import 'package:online_gd/service/network_manager.dart';
import 'package:online_gd/theme/g_theme.dart';
import 'package:online_gd/util/locale_string.dart';

import 'service/my_prefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.put(MyPrefs()).initStorage();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final data = GetStorage();
  final NetworkManager networkManager = Get.put(NetworkManager());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online GD',
      translations: LocaleString(),
      locale: Get.find<MyPrefs>().language.val
          ? const Locale('en', 'US')
          : const Locale('bn', 'BD'),
      theme: GTheme.lightTheme,
      getPages: [
        GetPage(
            name: '/',
            page: () {
              return GetBuilder<NetworkManager>(
                builder: (builder) => networkManager.connectionType == 0
                    ? const NoInternet()
                    : data.hasData('token')
                        ? Dashboard()
                        : const LoginScreen(),
              );
            })
      ],
    );
  }
}
