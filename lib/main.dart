import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';
import 'screens/schedule_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF0A369D);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ramos Antonino Jaypee - Week 14 Static UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryBlue,
          primary: primaryBlue,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F6F8),
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryBlue,
          foregroundColor: Colors.white,
          toolbarHeight: 68,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryBlue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            shape: const StadiumBorder(),
          ),
        ),
        useMaterial3: true,
      ),
      // Switch initialRoute between '/screen1' and '/screen2' to preview each screen:
      initialRoute: '/screen2',
      routes: {
        '/screen1': (context) => const ProfileScreen(),
        '/screen2': (context) => const ScheduleScreen(),
      },
    );
  }
}