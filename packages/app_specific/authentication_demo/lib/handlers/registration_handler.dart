import 'package:app_common/app_common.dart';
import 'package:logging/logging.dart';

class MyAppRegistrationHandler implements RegistrationHandler {
  @override
  Future<void> register(String username, String password) async {
    // This would be an API call to register a user or something similar
    final log = Logger('MyLogger');

    log.info('User registered with $username, $password');
  }
}
