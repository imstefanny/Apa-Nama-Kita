import 'dart:io';

import 'package:ac_88/about/about.dart';
import 'package:ac_88/login/login.dart';
import 'package:ac_88/profile/ChangePassword.dart';
import 'package:ac_88/profile/editprofile.dart';
import 'package:ac_88/profile/imgproviderprofile.dart';
import 'package:ac_88/register/register.dart';
import 'package:ac_88/register/registerProvider.dart';
import 'package:ac_88/verification/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ac_88/topup/topUp.dart';
import 'package:provider/provider.dart';

import '../snackbar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _notif = true;
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<registerProvider>(context);
    var imgprov = Provider.of<ImagePickerProviderProfile>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 0.03 * height),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 15),
                height: 0.15 * height,
                width: 0.15 * height,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    imgprov.img != null
                        ? ClipOval(
                            child: Image.file(
                              File(imgprov.img!.path),
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                          )
                        : CircleAvatar(
                            radius: 75,
                            backgroundImage: NetworkImage(
                                "https://loremflickr.com/320/240?random=8"),
                          ),
                    Positioned(
                      bottom: -8,
                      right: -30,
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => ProfileEdit()));
                        },
                        elevation: 2.0,
                        fillColor: Color.fromRGBO(13, 110, 253, 1),
                        child: Icon(Icons.edit, size: 20, color: Colors.white),
                        shape: CircleBorder(),
                      ),
                    )
                  ],
                ),
              ),
              !prov.tfname.text.isEmpty
                  ? Text("${prov.tfname.text}",
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400, fontSize: 20))
                  : Text("<Your name>",
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400, fontSize: 20)),
              !prov.tfname.text.isEmpty
                  ? Text("${prov.tfaddress.text}",
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400, fontSize: 14))
                  : Text("<Your address>",
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400, fontSize: 14)),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 0.8 * width,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(0, 0),
                      blurRadius: 10,
                      spreadRadius: 2),
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ], borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(Icons.attach_money, color: Colors.white),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(13, 110, 253, 1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text("Rp 88,000",
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400, fontSize: 15)),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => TopUp()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text('Top up'),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 0.025 * height,
                    left: 0.025 * width,
                    right: 0.025 * width),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 10),
                          padding: EdgeInsets.all(5),
                          child: Icon(Icons.language, color: Colors.white),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(13, 110, 253, 1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      Text('Languages',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400, fontSize: 16))
                    ]),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => Verification(purpose: "Change Password", status: true)));
                      },
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 10),
                            padding: EdgeInsets.all(5),
                            child:
                                Icon(Icons.lock_outlined, color: Colors.white),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(13, 110, 253, 1),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text('Change password',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.w400, fontSize: 16))
                      ]),
                    ),
                    Divider(),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 10),
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.notifications, color: Colors.white),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(13, 110, 253, 1),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      Text('Notifications',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400, fontSize: 16)),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Switch(
                              value: _notif,
                              onChanged: (bool value) {
                                setState(() {
                                  _notif = value;

                                  if (_notif == false) {
                                    var _snackBar = CustomSnackBar();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        _snackBar.getSnackBar(context,
                                            "Notification has been disabled"));
                                  } else {
                                    var _snackBar = CustomSnackBar();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        _snackBar.getSnackBar(context,
                                            "Notification has been enabled"));
                                  }
                                });
                              }),
                        ),
                      )
                    ]),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        showMyBottomSheet(context);
                      },
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 10),
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.info, color: Colors.white),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(13, 110, 253, 1),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text('About',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.w400, fontSize: 16))
                      ]),
                    ),
                    Divider(),
                    GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Column(
                                    children: [
                                      Text(
                                        "Logout",
                                        style: GoogleFonts.lexendDeca(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Divider(
                                        thickness: 3,
                                      )
                                    ],
                                  ),
                                  content: Text(
                                    "Are your sure you want to log out?",
                                    style: GoogleFonts.lexendDeca(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: Text(
                                          "Cancel",
                                          style: GoogleFonts.lexendDeca(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        )),
                                    SizedBox(
                                      height: 35,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (_) => Login()),
                              ModalRoute.withName('/'));
                                        },
                                        child: Text("Logout",
                                            style: GoogleFonts.lexendDeca(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              margin: EdgeInsets.only(left: 5, right: 10),
                              padding: EdgeInsets.all(5),
                              child: Icon(Icons.logout, color: Colors.white),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                          Text('Logout',
                              style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.red)),
                        ])),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
