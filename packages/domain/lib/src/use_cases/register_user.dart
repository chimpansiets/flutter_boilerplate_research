import 'package:entities/entities.dart';
import 'package:domain/src/repositories_interfaces/user_repository.dart';

class RegisterUser {
  final UserRepository repository;

  RegisterUser(this.repository);

  Future<void> execute({required User user}) async {
    await repository.registerUser(user);
  }
}