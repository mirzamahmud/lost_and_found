import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyPrefs extends GetxController {
  final data = GetStorage();

  Future<void> initStorage() async {
    await GetStorage.init();
  }
  // App value
  final token = ''.val('token');
  final username = ''.val('username');
  final fullname = ''.val('fullname');
  final fullnameBn = ''.val('fullnameBn');
  final password = ''.val('password');
  final userImage = ''.val('image');
  final email = ''.val('email');
  final phone = ''.val('phone');
  final country = ''.val('country');
  final nid = ''.val('nid');

  // Preferences
  final language = false.val('lang');
  final remember = false.val('remember_pass');
}