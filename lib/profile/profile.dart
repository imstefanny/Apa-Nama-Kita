import 'dart:io';

import 'package:ac_88/login/login.dart';
import 'package:ac_88/profile/ChangePassword.dart';
import 'package:ac_88/profile/editprofile.dart';
import 'package:ac_88/profile/imgproviderprofile.dart';
import 'package:ac_88/register/register.dart';
import 'package:ac_88/register/registerProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ac_88/topup/topUp.dart';
import 'package:provider/provider.dart';

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
        backgroundColor: Colors.white,
        title: Text(
          "AC88",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 0.03 * height),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Profile',
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold, fontSize: 30)),
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
                            fit: BoxFit.cover,
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
            Text("${prov.tfname.text}",
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w400, fontSize: 20)),
            Text("${prov.tfaddress.text}",
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w400, fontSize: 16)),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 0.07 * height,
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
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 7, right: 10),
                    child: Icon(Icons.attach_money, color: Colors.white),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(13, 110, 253, 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Text("Rp 88,000",
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400, fontSize: 15)),
                  Container(
                      margin: EdgeInsets.only(right: 0.02 * width),
                      child: Padding(
                        padding: EdgeInsets.only(left: 0.2 * width),
                        child: ElevatedButton(
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
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 0.025 * height,
                  left: 0.025 * width,
                  right: 0.025 * width),
              height: 0.25 * height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.language, color: Colors.white),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(13, 110, 253, 1),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Text('Languages',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400, fontSize: 16))
                  ]),
                  Divider(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ChangePassword()));
                    },
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 10),
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.lock_outlined, color: Colors.white),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(13, 110, 253, 1),
                            borderRadius: BorderRadius.circular(5)),
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
                    Row(
                      children: [
                        Text('Notifications',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.w400, fontSize: 16)),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: Switch(
                              value: _notif,
                              onChanged: (bool value) {
                                // This is called when the user toggles the switch.
                                setState(() {
                                  _notif = value;
                                });
                              }),
                        )
                      ],
                    )
                  ]),
                  Divider(),
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.logout, color: Colors.white),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                    ),
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
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) => Login()));
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
                      child: Text('Logout',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.red)),
                    )
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
