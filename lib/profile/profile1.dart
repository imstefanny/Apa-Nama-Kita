import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile1 extends StatefulWidget {
  const Profile1({super.key});

  @override
  State<Profile1> createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "AC88",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 40, 25, 17),
              child: Text(
                "Profile",
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          Text('Kelly',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w400, fontSize: 20)),
        ],
      ),
    );
  }
}
