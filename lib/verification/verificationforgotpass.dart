import 'package:ac_88/login/ChangeForgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifForgotPass extends StatefulWidget {
  const VerifForgotPass({super.key});

  @override
  State<VerifForgotPass> createState() => _VerifForgotPassState();
}

class _VerifForgotPassState extends State<VerifForgotPass> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Container(
            height: 0.9 * height,
            child: Column(
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
                  padding: const EdgeInsets.fromLTRB(25, 90, 25, 0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ChangeForgotPass()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                          minimumSize: Size(350, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        "Change Password",
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
