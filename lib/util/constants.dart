import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Constants {
  static String formattedDate(String date) {
    DateTime dt = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(date);
    final convertedDate = DateFormat('d MMM, yyyy').format(dt);
    return convertedDate;
  }

  static String formattedPreviewDate(String date) {
    DateTime dt = DateFormat('yyyy-MM-dd').parse(date);
    final convertedDate = DateFormat('d MMM, yyyy').format(dt);
    return convertedDate;
  }

  static String apiFormatDate(DateTime date) {
    final convertedDate = DateFormat('dd-MMM-yyyy').format(date);
    return convertedDate;
  }

  static String apiDate(String date) {
    DateTime dt = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(date);
    final convertedDate = DateFormat('yyyy-MM-dd').format(dt);
    return convertedDate;
  }

  static String formatTime(String value) {
    String? timeFormat;
    if (value.isNotEmpty) {
      final formattedTime = DateTime.parse('2000-12-01T$value');
      timeFormat = DateFormat('hh:mm a').format(formattedTime);
    }
    return timeFormat ?? '';
  }

  static validateDate(String startDate, DateTime endDate) {
    final fromDate = DateFormat('yyyy-MM-dd').parse(startDate);
    final difference = fromDate.difference(endDate).inDays;
    if (difference >= 0) {
      Get.defaultDialog(
          title: 'Date Error',
          middleText: 'Please select date correctly',
          textConfirm: 'Ok',
          onConfirm: () => Get.back());
    }
  }

  // GD Info constants
  static const int entryOwn = 1;
  static const int entryOthers = 2;
  static const String own = 'OWN';
  static const String others = 'OTHERS';

  // Product type id
  static const int vehicle = 1;
  static const int document = 2;
  static const int man = 4;
  static const int unIdentifiedDeadBody = 5;
  static const int gdStatusId = 1;

  // Entry type id
  static const int lost = 1;
  static const int found = 2;
  static const int theft = 3;

  // Computer type id
  static const int compAccessories = 6;
  static const int compOthers = 1;
}
