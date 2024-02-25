import 'package:flutter/material.dart';
import 'registration_handler.dart';

class RegistrationScreen extends StatefulWidget {
  final RegistrationHandler registrationHandler;

  const RegistrationScreen({super.key, required this.registrationHandler});

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final username = _usernameController.text;
                final password = _passwordController.text;
                // Use the provided registration handler to perform registration
                await widget.registrationHandler.register(username, password);
                // Implement navigation or success handling as needed
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
