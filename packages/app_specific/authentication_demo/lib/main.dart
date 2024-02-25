import 'package:app_common/app_common.dart';
import 'package:authentication_demo/handlers/registration_handler.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final log = Logger('MyLogger');

void main() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });

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
