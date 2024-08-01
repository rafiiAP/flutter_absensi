import 'dart:developer' as developer;

import 'package:flutter_absensi/core/constants/variables.dart';

MainComponent get C => MainComponent._internal();

class MainComponent {
  static final MainComponent _instancce = MainComponent._internal();
  factory MainComponent() => _instancce;
  MainComponent._internal();

  showLog(String message) {
    if (Variables.isShowLog) developer.log(message);
  }
}
