import 'package:ac_88/home/home.dart';
import 'package:ac_88/register/register.dart';
// import 'package:ac_88/verification/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:ac_88/home/homeProvider.dart';
import 'package:ac_88/profile/profile.dart';
import 'package:ac_88/splashscreen/splashScreen.dart';
import 'package:ac_88/register/registerProvider.dart';
import 'package:ac_88/transaction/transaction.dart';

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

  void _portraitModeOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
