import 'package:flutter/material.dart';

class registerProvider extends ChangeNotifier {
  TextEditingController _tfemail = TextEditingController();
  TextEditingController _tfpass = TextEditingController();
  TextEditingController _tfconfirm = TextEditingController();

  bool _isEmailEmpty = false;
  bool _isPassEmpty = false;
  bool _isConfirmEmpty = false;

  TextEditingController get tfemail => _tfemail;
  TextEditingController get tfpass => _tfpass;
  TextEditingController get tfconfirm => _tfconfirm;

  bool get isEmailEmpty => _isEmailEmpty;
  bool get isPassEmpty => _isPassEmpty;
  bool get isConfirmEmpty => _isConfirmEmpty;

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
