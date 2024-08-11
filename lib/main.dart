import 'package:complex_ui/screens/home_screen.dart';
import 'package:complex_ui/screens/light_dark_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFFE1E2E6),

      ),
      home: Scaffold(
        body: Center(child: LightDarkButton()),
      ),
    );
  }
}
