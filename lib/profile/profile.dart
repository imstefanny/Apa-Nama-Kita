import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Text("Profile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              const SizedBox(height: 24),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(500)),
                child: Image.asset(
                  "assets/sumin2.png",
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 24),
              const Text("Kelly", style: TextStyle(fontSize: 20)),
              const SizedBox(height: 16),
              Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 16.0,
                      spreadRadius: 0.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ], borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Row(
                    children: const [Text("Balance")],
                  )),
            ],
          )),
    );
  }
}
