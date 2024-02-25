import 'package:app_common/app_common.dart';
import 'package:authentication_demo/handlers/registration_handler.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      home: RegistrationScreen(registrationHandler: MyAppRegistrationHandler()),
    );
  }
}
