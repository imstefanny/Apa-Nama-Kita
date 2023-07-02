import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/login.dart';

class RegisterData extends StatefulWidget {
  final VoidCallback nextPage;
  const RegisterData({super.key, required this.nextPage});

  @override
  State<RegisterData> createState() => _RegisterDataState();
}

class _RegisterDataState extends State<RegisterData> {
  var name = "";
  var experience = "";
  var emailAddress = "";
  var pass = "";
  var passReenter = "";
  bool? _checkedCb = false;
  var hidePass = true;
  void navigateToLogin() {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const Login();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:
                  Image.asset('assets/register.png', width: 150, height: 150),
            ),
            Text('Engineer Sign Up',
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold, fontSize: 24)),
            const SizedBox(height: 16),
            Text(
              "Name",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              onChanged: (text) {
                setState(() {
                  name = text;
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "GoYoonJung",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
            const SizedBox(height: 9),
            Text(
              "Experience",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              onChanged: (text) {
                setState(() {
                  experience = text;
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Years of experience Ex: 4",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
            const SizedBox(height: 9),
            Text(
              "Email address",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              onChanged: (text) {
                setState(() {
                  emailAddress = text;
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "email@domain.com",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
            const SizedBox(height: 9),
            Text(
              "Password",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              obscureText: hidePass,
              onChanged: (text) {
                setState(() {
                  pass = text;
                });
              },
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
            const SizedBox(height: 9),
            Text(
              "Re-Enter password",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              obscureText: true,
              onChanged: (text) {
                setState(() {
                  passReenter = text;
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Min. 8 character",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
            ListTileTheme(
              horizontalTitleGap: 0,
              child: CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Saya menyetujui ketentuan pengguna",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(176, 190, 196, 1))),
                value: _checkedCb,
                onChanged: (newValue) {
                  setState(() {
                    _checkedCb = newValue;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
            ),
            const SizedBox(height: 23),
            ElevatedButton(
              onPressed: (emailAddress.isEmpty ||
                      name.isEmpty ||
                      experience.isEmpty ||
                      pass.isEmpty ||
                      pass.isEmpty ||
                      passReenter.isEmpty ||
                      _checkedCb == false)
                  ? null
                  : widget.nextPage,
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.maxFinite, 48),
                  backgroundColor: (emailAddress.isEmpty ||
                          name.isEmpty ||
                          experience.isEmpty ||
                          pass.isEmpty ||
                          pass.isEmpty ||
                          passReenter.isEmpty ||
                          _checkedCb == false)
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
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Joined us before?",
                    style: TextStyle(
                        color: Color.fromRGBO(140, 140, 140, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 12)),
                TextButton(
                    onPressed: () {
                      navigateToLogin();
                    },
                    child: const Text("Login",
                        style: TextStyle(
                            color: Color.fromRGBO(13, 110, 253, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 12)))
              ],
            )
          ],
        )),
      ),
    );
  }
}
