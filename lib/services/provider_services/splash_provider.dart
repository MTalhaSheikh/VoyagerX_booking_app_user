import 'package:flutter/material.dart';
import 'dart:async';

import '../../View/auth/select_language_page.dart';

class SplashProvider with ChangeNotifier {
  void startSplashTimer(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SelectLanguagePage()),
      );
    });
  }
}
