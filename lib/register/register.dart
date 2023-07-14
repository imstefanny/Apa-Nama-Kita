import 'package:ac_88/verification/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ac_88/login/login.dart';
import 'package:ac_88/register/registerProvider.dart';

import '../snackbar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? password;
  String? confirmPassword;
  bool passwordMatch = true;

  void validatePassword() {
    if (password == confirmPassword) {
      passwordMatch = true;
    } else
      passwordMatch = false;
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
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('assets/register.png',
                        width: 0.25 * height),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: (Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sign Up',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        SizedBox(height: 10),
                        Text('Name',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        SizedBox(height: 5),
                        TextField(
                          onChanged: (value) {
                            prov.setNameEmpty = prov.tfname.text.isEmpty;
                          },
                          controller: prov.tfname,
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter Your Name',
                            hintStyle: TextStyle(fontSize: 15),
                            isDense: true,
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Address',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        SizedBox(height: 5),
                        TextField(
                          onChanged: (value) {
                            prov.setAddressEmpty = prov.tfaddress.text.isEmpty;
                          },
                          controller: prov.tfaddress,
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter Your Address',
                            hintStyle: TextStyle(fontSize: 15),
                            isDense: true,
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Email address',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        SizedBox(height: 5),
                        TextField(
                          onChanged: (value) {
                            prov.setEmailEmpty = prov.tfemail.text.isEmpty;
                          },
                          controller: prov.tfemail,
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter Your Email',
                            hintStyle: TextStyle(fontSize: 15),
                            isDense: true,
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
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
                          onChanged: (value) {
                            prov.setPassEmpty = prov.tfpass.text.isEmpty;
                            setState(() {
                              password = value;
                            });
                          },
                          obscureText: eye.passhidden,
                          controller: prov.tfpass,
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
                          onChanged: (value) {
                            prov.setConfirmEmpty = prov.tfconfirm.text.isEmpty;
                            setState(() {
                              confirmPassword = value;
                              validatePassword();
                            });
                          },
                          obscureText: eye.confirmhidden,
                          controller: prov.tfconfirm,
                          decoration: InputDecoration(
                              errorText: !passwordMatch
                                  ? 'Passwords do not match'
                                  : null,
                              filled: true,
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
                                    onPressed: (prov.isEmailEmpty ||
                                            prov.isPassEmpty ||
                                            prov.isConfirmEmpty ||
                                            prov.isNameEmpty ||
                                            prov.isAddressEmpty ||
                                            !passwordMatch)
                                        ? null
                                        : () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (_) => Verification(
                                                      purpose: "Register",
                                                      status: false),
                                                ));
                                            var _snackBar = CustomSnackBar();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(_snackBar.getSnackBar(
                                                    context,
                                                    "Register berhasil. Silahkan login!"));
                                          },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(13, 110, 253, 1),
                                      minimumSize: Size(300, 40),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Sign up',
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ))),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Joined us before? ',
                                style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Verification(
                                              purpose: "Verify",
                                              status: false)));
                                },
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.lexendDeca(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.blue,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                      ],
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
