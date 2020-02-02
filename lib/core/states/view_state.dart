import 'package:flutter/material.dart';

class ViewState extends ChangeNotifier {
  var _busy = false;
  String _errorMessage;

  bool get busy => _busy;
  String get errorMessage => _errorMessage;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }

  void setErrorMessage(String text) {
    _errorMessage = text;
    notifyListeners();
  }
}
