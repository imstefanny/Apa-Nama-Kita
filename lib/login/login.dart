import 'package:ac_88/home/home.dart';
import 'package:ac_88/register/registerProvider.dart';
import 'package:ac_88/verification/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ac_88/bottomnavigation.dart';
import 'package:ac_88/transaction/transaction.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        child: SingleChildScrollView(
          child: Container(
            height: 0.78 * height,
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
                    controller: prov.tfemail,
                    decoration: InputDecoration(
                        filled: true,
                        errorText:
                            prov.isEmailEmpty ? "Email may not be empty" : null,
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
                      Text(
                        "Forgot password ?",
                        style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 17),
                  child: TextField(
                    obscureText: eye.passhidden,
                    controller: prov.tfpass,
                    decoration: InputDecoration(
                        filled: true,
                        errorText: prov.isPassEmpty
                            ? "Password may not be empty"
                            : null,
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
                            onPressed: () {
                              prov.setEmailEmpty = prov.tfemail.text.isEmpty;
                              prov.setPassEmpty = prov.tfpass.text.isEmpty;

                              if (!prov.isEmailEmpty && !prov.isPassEmpty) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => Verification()));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(13, 110, 253, 1),
                                minimumSize: Size(0, 60),
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
          ),
        ),
      ),
    );
  }
}
