import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_kelompok/bottomnavigation.dart';
import 'package:tugas_kelompok/transaction/transaction.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 17, 25, 0),
              child: Image.asset(
                "assets/login.png",
                width: 200,
                height: 225,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 5),
            child: Text(
              "Login",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 17, 25, 5),
            child: Text(
              "Email Address",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 5, 25, 17),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Enter Email Address",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 17, 25, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Password",
                  style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Forgot password ?",
                  style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(109, 137, 239, 1),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 5, 25, 17),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Min. 8 character",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 17, 25, 17),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => BottomNavigation()))
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(0, 60),
                          primary: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        "Login",
                        style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
