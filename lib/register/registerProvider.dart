import 'package:flutter/material.dart';

class registerProvider extends ChangeNotifier {
  TextEditingController _tfemail = TextEditingController();
  TextEditingController _tfpass = TextEditingController();
  TextEditingController _tfconfirm = TextEditingController();
  TextEditingController _tfname = TextEditingController();
  TextEditingController _tfaddress = TextEditingController();

  bool _isEmailEmpty = true;
  bool _isPassEmpty = true;
  bool _isConfirmEmpty = true;
  bool _isNameEmpty = true;
  bool _isAddressEmpty = true;

  TextEditingController get tfemail => _tfemail;
  TextEditingController get tfpass => _tfpass;
  TextEditingController get tfconfirm => _tfconfirm;
  TextEditingController get tfname => _tfname;
  TextEditingController get tfaddress => _tfaddress;

  bool get isEmailEmpty => _isEmailEmpty;
  bool get isPassEmpty => _isPassEmpty;
  bool get isConfirmEmpty => _isConfirmEmpty;
  bool get isNameEmpty => _isNameEmpty;
  bool get isAddressEmpty => _isAddressEmpty;

  set setNameEmpty(value) {
    _isNameEmpty = value;
    notifyListeners();
  }

  set setAddressEmpty(value) {
    _isAddressEmpty = value;
    notifyListeners();
  }

  set setEmailEmpty(value) {
    _isEmailEmpty = value;
    notifyListeners();
  }

  set setPassEmpty(value) {
    _isPassEmpty = value;
    notifyListeners();
  }

  set setConfirmEmpty(value) {
    _isConfirmEmpty = value;
    notifyListeners();
  }
}

class eyeProvider extends ChangeNotifier {
  bool _passhidden = true;
  bool _confirmhidden = true;

  bool get passhidden => _passhidden;
  bool get confirmhidden => _confirmhidden;

  set setPassHidden(value) {
    _passhidden = value;
    notifyListeners();
  }

  set setConfirmHidden(value) {
    _confirmhidden = value;
    notifyListeners();
  }
}
