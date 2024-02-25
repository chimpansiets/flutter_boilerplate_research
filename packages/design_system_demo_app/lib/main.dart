import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DesignSystemDemoApp());
}

class DesignSystemDemoApp extends StatelessWidget {
  const DesignSystemDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design System Demo',
      theme: myTheme,
      home: const DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatefulWidget {
  const DemoHomePage({super.key});

  @override
  State<DemoHomePage> createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  double _sliderValue = 0.5;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Design System Demo', style: theme.textTheme.displaySmall),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header text
            Text(
              'Header Text',
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),

            // Body text
            Text(
              'This is a body text example to showcase the text styling of the design system.',
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // Buttons
            MyButton(
              label: 'Primary Button',
              onPressed: () {
                // Handle primary button press
              },
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                // Handle outlined button press
              },
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 16),

            // Text Link
            InkWell(
              onTap: () {
                // Handle text link tap
              },
              child: Text(
                'Tap this text link',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.secondary,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 16),

            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 1.0,
              divisions: 10,
              label: _sliderValue.toStringAsFixed(1),
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
            ),
            const SizedBox(height: 16),

            Switch(
              value: _switchValue,
              onChanged: (newValue) {
                // Handle switch toggle
                setState(() {
                  _switchValue = !_switchValue;
                });
              },
            ),
            const SizedBox(height: 16),

            Checkbox(
              value: true,
              onChanged: (newValue) {
                // Handle checkbox change
              },
            ),
            const SizedBox(height: 16),

            RadioListTile(
              toggleable: true,
              title: const Text('Radio Button'),
              value: true,
              groupValue: true,
              onChanged: (newValue) {
              },
            ),
          ],
        ),
      ),
    );
  }
}

