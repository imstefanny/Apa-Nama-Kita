import 'package:ac_88/login/verification.dart';
import 'package:ac_88/register/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var hidePass = true;
  var email = "";
  var pass = "";

  void navigateToRegister() {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const Register();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 17, 25, 0),
                child: Image.asset(
                  "assets/engineer-login.png",
                  width: 285,
                  height: 285,
                ),
              ),
            ),
            const SizedBox(height: 31),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 5),
              child: Text(
                "Engineer Login",
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
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 17),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    email = text;
                  });
                },
                decoration: const InputDecoration(
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
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Forgot password ?",
                    style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(109, 137, 239, 1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 17),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    pass = text;
                  });
                },
                obscureText: hidePass,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePass = !hidePass;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                    border: const OutlineInputBorder(
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
                        onPressed: (email.isEmpty || pass.isEmpty)
                            ? null
                            : () => {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) =>
                                          Verification(email: email)))
                                },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(0, 60),
                            backgroundColor: (email.isEmpty || pass.isEmpty)
                                ? Colors.grey
                                : const Color.fromRGBO(13, 110, 253, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text(
                          "Next",
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
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("New to AC 88?",
                    style: TextStyle(
                        color: Color.fromRGBO(140, 140, 140, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 12)),
                TextButton(
                    onPressed: () {
                      navigateToRegister();
                    },
                    child: const Text("Sign up",
                        style: TextStyle(
                            color: Color.fromRGBO(13, 110, 253, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 12)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
