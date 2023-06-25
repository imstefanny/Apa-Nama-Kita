import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:ac_88/login/login.dart';
import 'package:ac_88/register/registerProvider.dart';

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
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Container(
            height: 1.05 * height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child:
                      Image.asset('assets/register.png', width: 0.25 * height),
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
                        controller: prov.tfname,
                        decoration: InputDecoration(
                          filled: true,
                          errorText:
                              prov.isNameEmpty ? "Name may not be empty" : null,
                          hintText: 'Sukro',
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
                        controller: prov.tfaddress,
                        decoration: InputDecoration(
                          filled: true,
                          errorText: prov.isAddressEmpty
                              ? "Address may not be empty"
                              : null,
                          hintText: 'Jln. Juda',
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
                        controller: prov.tfemail,
                        decoration: InputDecoration(
                          filled: true,
                          errorText: prov.isEmailEmpty
                              ? "Email may not be empty"
                              : null,
                          hintText: 'email@domain.com',
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
                                    prov.setNameEmpty =
                                        prov.tfname.text.isEmpty;
                                    prov.setAddressEmpty =
                                        prov.tfaddress.text.isEmpty;
                                    prov.setEmailEmpty =
                                        prov.tfemail.text.isEmpty;
                                    prov.setPassEmpty =
                                        prov.tfpass.text.isEmpty;
                                    prov.setConfirmEmpty =
                                        prov.tfconfirm.text.isEmpty;

                                    if (!prov.isNameEmpty &&
                                        !prov.isAddressEmpty &&
                                        !prov.isEmailEmpty &&
                                        !prov.isPassEmpty &&
                                        !prov.isConfirmEmpty) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => Login()));
                                      Fluttertoast.showToast(
                                        msg:
                                            "Register berhasil. Silahkan login!",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        backgroundColor: Colors.grey[800],
                                        textColor: Colors.white,
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(13, 110, 253, 1),
                                    minimumSize: Size(350, 60),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
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
                        padding: const EdgeInsets.only(top: 25),
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Login()));
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
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
