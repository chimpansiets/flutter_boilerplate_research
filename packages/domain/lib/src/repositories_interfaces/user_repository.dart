import 'package:entities/entities.dart';

abstract class UserRepository {
  Future<void> registerUser(User user);
}