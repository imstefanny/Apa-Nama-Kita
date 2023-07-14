import 'package:ac_88/bottomnavigation.dart';
import 'package:ac_88/profile/ChangePassword.dart';
import 'package:ac_88/register/registerProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../login/login.dart';

class Verification extends StatefulWidget {
  String purpose;
  bool status = false;
  Verification({Key? key, required this.purpose, required this.status})
      : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<registerProvider>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 7, 25, 0),
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
                      padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
                      child: Text(
                        "We have sent verification code to your email (${prov.tfemail.text}), please enter the verification code below.",
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
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
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
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
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
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
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
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
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
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
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
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
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
                  padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (widget.status == false) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => Login()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ChangePassword()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                          minimumSize: Size(350, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        "${widget.purpose}",
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
          ),
        ),
      ),
    );
  }
}
