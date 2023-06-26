import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../admin/adminHome.dart';
import '../engineerHome.dart';

class Verification extends StatefulWidget {
  final String email;
  const Verification({super.key, required this.email});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          Center(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 17, 25, 0),
                child: Text(
                  "Verification Code",
                  style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                )),
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 60, 25, 0),
                child: Text(
                  "We have sent verification code to your email, Please enter the verification code below.",
                  style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                )),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 60, 25, 0),
              child: Text(
                "Verification Code",
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 18, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 18, 25, 0),
            child: Text(
              "Resend verification Code",
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 90, 25, 0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  var count = 0;
                  Navigator.popUntil(context, (_) {
                    return count++ == 2;
                  });
                  if (widget.email == "admin@gmail.com") {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const AdminHome()));
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const EngineerHome()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                    minimumSize: Size(350, 60),
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
          ),
        ],
      ),
    );
  }
}
