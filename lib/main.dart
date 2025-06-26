import 'package:flutter/material.dart';
import 'find_doctor_screen.dart';
import 'symptom_checker_screen.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApiConstants.loadConfig();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const FindDoctorScreen(),
      routes: {
        '/symptom-checker': (context) => const SymptomCheckerScreen(),
      },
    );
  }
}
