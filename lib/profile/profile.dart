import 'package:ac_88/admin/logoutConfirm.dart';
import 'package:ac_88/login/login.dart';
import 'package:ac_88/profile/changePassword.dart';
import 'package:ac_88/transaction/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'editProfile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _notif = true;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
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
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              height: 0.15 * height,
              width: 0.15 * height,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/sumin2.png'),
                  ),
                  Positioned(
                    bottom: -8,
                    right: -30,
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const EditProfile();
                        }));
                      },
                      elevation: 2.0,
                      fillColor: const Color.fromRGBO(13, 110, 253, 1),
                      shape: const CircleBorder(),
                      child:
                          const Icon(Icons.edit, size: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Text('Kelly',
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w600, fontSize: 20)),
            const SizedBox(height: 8),
            Text('2 Years Experience',
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w600, fontSize: 16)),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 0.07 * height,
              width: 0.8 * width,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 2),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ], borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 7, right: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(13, 110, 253, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.attach_money, color: Colors.white),
                  ),
                  Text('Rp. 88,000',
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400, fontSize: 18)),
                  const Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 0.02 * width),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const Withdraw()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(13, 110, 253, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 3, right: 3),
                          child: Text('Withdraw'),
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
                      margin: const EdgeInsets.only(left: 5, right: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(13, 110, 253, 1),
                          borderRadius: BorderRadius.circular(5)),
                      child:
                          const Icon(Icons.badge_outlined, color: Colors.white),
                    ),
                    Text('Verification',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400, fontSize: 16)),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(
                        Icons.check,
                        size: 28,
                        color: Color.fromRGBO(0, 255, 0, 1),
                      ),
                    )
                  ]),
                  const Divider(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ChangePassword();
                      }));
                    },
                    child: Row(children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5, right: 10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(13, 110, 253, 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Icon(Icons.lock_outlined,
                            color: Colors.white),
                      ),
                      Text('Change password',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400, fontSize: 16))
                    ]),
                  ),
                  const Divider(),
                  Row(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(13, 110, 253, 1),
                          borderRadius: BorderRadius.circular(5)),
                      child:
                          const Icon(Icons.notifications, color: Colors.white),
                    ),
                    Text('Notifications',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400, fontSize: 16)),
                    const Spacer(),
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
                  ]),
                  const Divider(),
                  GestureDetector(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Row(children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5, right: 10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Icon(Icons.logout, color: Colors.white),
                      ),
                      Text('Logout',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.red))
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
