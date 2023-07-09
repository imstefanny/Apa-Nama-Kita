import 'package:ac_88/register/registerProvider.dart';
import 'package:ac_88/verification/verification.dart';
import 'package:ac_88/verification/verificationforgotpass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();
  bool isEmailEmpty = true;
  bool isPassEmpty = true;
  bool authenticate = false;

  void authentication(email_reg, pass_reg) {
    if (isEmailEmpty || isPassEmpty) {
      authenticate = false;
    } else {
      if (email.text == email_reg.text && pwd.text == pass_reg.text) {
        authenticate = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<registerProvider>(context);
    var eye = Provider.of<eyeProvider>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 25, 17),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            isEmailEmpty = false;
                            authentication(prov.tfemail, prov.tfpass);
                          });
                        },
                        controller: email,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: 'email@domain.com',
                            hintStyle: TextStyle(fontSize: 15),
                            isDense: true,
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => VerifForgotPass()));
                            },
                            child: Text(
                              "Forgot password ?",
                              style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 25, 17),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            isPassEmpty = false;
                            authentication(prov.tfemail, prov.tfpass);
                          });
                        },
                        obscureText: eye.passhidden,
                        controller: pwd,
                        decoration: InputDecoration(
                            filled: true,
                            suffixIcon: IconButton(
                              onPressed: () {
                                eye.setPassHidden = !eye.passhidden;
                              },
                              icon: const Icon(Icons.remove_red_eye_outlined),
                            ),
                            hintText: 'Min. 8 characters',
                            hintStyle: TextStyle(fontSize: 15),
                            isDense: true,
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
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
                                onPressed: !authenticate
                                    ? null
                                    : () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    Verification()));
                                      },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(13, 110, 253, 1),
                                    minimumSize: Size(0, 60),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
