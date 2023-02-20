import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  bool _authentificated = false;

  bool get authentificated => _authentificated;

  void login({Map? credentials}) {
    _authentificated = true;

    notifyListeners();
  }

  void logout() {
    _authentificated = false;

    notifyListeners();
  }
}
