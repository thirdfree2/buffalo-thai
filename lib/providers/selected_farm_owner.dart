import 'package:flutter/material.dart';

class SelectedFarmOwner with ChangeNotifier {
  String _urlImg = '';
  String _farmOwner = '';
  String _lastName = '';
  String _position = '';
  String _phone = '';
  String _lineId = '';


  String get farmOwner => _farmOwner;
  String get urlImg => _urlImg;
  String get lastName => _lastName;
  String get position => _position;
  String get phone => _phone;
  String get lineId => _lineId;

  void setSelectedFarmOwner(String urlImg,String farmOwner,String lastName, String position, String phone, String lineId) {
    _urlImg = urlImg;
    _farmOwner = farmOwner;
    _lastName = lastName;
    _position = position;
    _phone = phone;
    _lineId = lineId;
    notifyListeners();
  }
}