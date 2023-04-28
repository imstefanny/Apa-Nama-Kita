import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/home/homeProvider.dart';
import 'package:tugas_kelompok/profile/profile.dart';
import 'package:tugas_kelompok/splashscreen/splashScreen.dart';
import 'package:tugas_kelompok/register/registerProvider.dart';
import 'package:tugas_kelompok/transaction/transaction.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => registerProvider()),
      ChangeNotifierProvider(create: (_) => eyeProvider()),
      ChangeNotifierProvider(create: (_) => themeProvider()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
