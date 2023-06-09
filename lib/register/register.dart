import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/login/login.dart';
import 'package:tugas_kelompok/register/registerProvider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<registerProvider>(context);
    var eye = Provider.of<eyeProvider>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('assets/register.png', width: 0.38 * height),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sign Up',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.bold, fontSize: 30)),
                SizedBox(height: 20),
                Text('Email address',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.bold, fontSize: 14)),
                SizedBox(height: 5),
                TextField(
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
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(height: 10),
                const Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(height: 5),
                TextField(
                  obscureText: eye.passhidden,
                  controller: prov.tfpass,
                  decoration: InputDecoration(
                      filled: true,
                      errorText:
                          prov.isPassEmpty ? "Password may not be empty" : null,
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
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(height: 10),
                const Text(
                  'Re-enter password',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(height: 5),
                TextField(
                  obscureText: eye.confirmhidden,
                  controller: prov.tfconfirm,
                  decoration: InputDecoration(
                      filled: true,
                      errorText: prov.isConfirmEmpty
                          ? "Re-enter password may not be empty"
                          : null,
                      hintText: 'Min. 8 characters',
                      suffixIcon: IconButton(
                        onPressed: () {
                          eye.setConfirmHidden = !eye.confirmhidden;
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                      hintStyle: TextStyle(fontSize: 15),
                      isDense: true,
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              prov.setEmailEmpty = prov.tfemail.text.isEmpty;
                              prov.setPassEmpty = prov.tfpass.text.isEmpty;
                              prov.setConfirmEmpty =
                                  prov.tfconfirm.text.isEmpty;

                              if (!prov.isEmailEmpty &&
                                  !prov.isPassEmpty &&
                                  !prov.isConfirmEmpty) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Login()));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Sign up'),
                            ))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Joined us before? ',
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Login()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
