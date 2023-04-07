import 'dart:io';

import 'package:contacts/android/android.app.dart';
import 'package:flutter/material.dart';

void main() {
  if (Platform.isIOS) {
  } else {
    runApp(const AndroidApp());
  }
}
