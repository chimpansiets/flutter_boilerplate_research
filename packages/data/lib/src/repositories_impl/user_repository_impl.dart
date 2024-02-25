import 'package:entities/entities.dart';
import 'package:domain/domain.dart';
import 'package:logging/logging.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<void> registerUser(User user) async {
    final log = Logger('MyLogger');

    log.info('User registered with ${user.username}, ${user.password}');
  }
}