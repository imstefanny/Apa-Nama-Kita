import 'package:ac_88/login/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../register/register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashtime = 2;

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const Login();
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0.08 * height,
              child: Image.asset(
                'assets/splash.png',
                height: height * 0.5,
                width: width * 0.99,
              )),
          Positioned(
            bottom: 0.225 * height,
            child: Text('AC 88',
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                )),
          ),
          Positioned(
              bottom: 0.15 * height,
              child: Column(
                children: [
                  Text('The best AC maintenance',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 20,
                        color: Colors.blue,
                      )),
                  Text('reservation platform',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 20,
                        color: Colors.blue,
                      )),
                ],
              )),
          Positioned(
              top: 0,
              left: 0.2 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.2 * width,
              )),
          Positioned(
              top: 0.2 * height,
              left: 0,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.125 * width,
              )),
          Positioned(
              top: 0.05 * height,
              right: 0.3 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.125 * width,
              )),
          Positioned(
              top: 0.21 * height,
              right: 0.025 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.1 * width,
              )),
          Positioned(
              top: 0.375 * height,
              left: 0.13 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.13 * width,
              )),
          Positioned(
              top: 0.34 * height,
              right: 0.12 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.125 * width,
              )),
          Positioned(
              bottom: 0.35 * height,
              left: 0.3 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.135 * width,
              )),
          Positioned(
              bottom: 0.34 * height,
              right: 0,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.135 * width,
              )),
          Positioned(
              bottom: 0.255 * height,
              left: 0.15 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.1 * width,
              )),
          Positioned(
              bottom: 0.28 * height,
              right: 0.19 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.12 * width,
              )),
          Positioned(
              bottom: 0,
              left: 0.1 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.125 * width,
              )),
          Positioned(
              bottom: 0.075 * height,
              right: 0.125 * width,
              child: Image.asset(
                'assets/snowflake.png',
                width: 0.1 * width,
              ))
        ],
      )),
    );
  }
}
