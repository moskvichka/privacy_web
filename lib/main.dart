import 'package:flutter/material.dart';
import 'package:moskvichka_privacy_web/const.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Политика конфиденциальности',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(20, 0, 135, 1))),
      home: const PrivacyPolicyPage(),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Политика конфиденциальности',
      home: Scaffold(
        appBar: AppBar(title: const Text('Политика конфиденциальности')),
        body: SafeArea(minimum: EdgeInsets.symmetric(horizontal: 21), child: const PrivacyPolicyContent()),
      ),
    );
  }
}

class PrivacyPolicyContent extends StatelessWidget {
  const PrivacyPolicyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(text: privacyPolicyText, style: TextStyle(fontSize: 16.0)),
        ),
      ),
    );
  }
}
