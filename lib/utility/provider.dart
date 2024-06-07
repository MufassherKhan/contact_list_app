import 'package:flutter/material.dart';
import 'dart:math';
import 'package:contact_list_app/theme/color.dart';
import 'package:contact_list_app/utility/model.dart';

class ContactListProvider extends ChangeNotifier {
  final List<ContactModel> _contactList = [];

  void saveContactInfo(String contactName, String contactNumber) {
    Random random = Random();
    int randomIndexNumber = random.nextInt(contactColorList.length);
    ContactModel contactModel = ContactModel(
        contactName: contactName,
        contactNumber: contactNumber,
        contactIconColor: contactColorList[randomIndexNumber]);
    _contactList.add(contactModel);
    notifyListeners();
  }

  void deleteContactInfo(int index) {
    _contactList.removeAt(index);
    notifyListeners();
  }

  List<ContactModel> get contactList => _contactList
    ..sort((firstValue, secondValue) =>
        firstValue.contactName.compareTo(secondValue.contactName));
}
