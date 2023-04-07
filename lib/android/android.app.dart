import 'package:contacts/android/styles.dart';
import 'package:contacts/android/views/home.view.dart';
import 'package:contacts/android/views/splash.view.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: androidTheme(),
      home:  HomePage(),

    );
  }
}
