import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "AC88",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Edit Profile",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(500)),
                  child: Image.asset(
                    "assets/sumin2.png",
                    fit: BoxFit.cover,
                    width: 160,
                    height: 160,
                  ),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 18, bottom: 18),
                      side: const BorderSide(
                          width: 2, color: Color.fromRGBO(143, 143, 143, 1)),
                    ),
                    child: const Text(
                      "Choose Photo",
                      style: TextStyle(
                          color: Color.fromRGBO(143, 143, 143, 1),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            const SizedBox(height: 32),
            const Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const TextField(
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
            const SizedBox(height: 14),
            const Text("Address",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const TextField(
              style: TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
                      shape: const StadiumBorder(),
                      fixedSize: const Size(180, 40)),
                  child: const Text("Save",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}
