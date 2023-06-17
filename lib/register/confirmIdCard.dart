import 'package:ac_88/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmIdCard extends StatefulWidget {
  final VoidCallback nextPage;
  const ConfirmIdCard({super.key, required this.nextPage});

  @override
  State<ConfirmIdCard> createState() => _ConfirmIdCardState();
}

class _ConfirmIdCardState extends State<ConfirmIdCard> {
  var clicked = false;

  void navigateToLogin() {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const Login();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text("Upload Your ID card",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24)),
          const SizedBox(height: 17),
          GestureDetector(
            onTap: () {
              setState(() {
                clicked = true;
              });
            },
            child: Container(
              width: 328,
              height: 400,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(201, 201, 201, 1),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(clicked
                      ? "assets/confirmidcard.png"
                      : "assets/idcard.png"),
                  clicked ? const SizedBox() : const SizedBox(height: 14),
                  clicked
                      ? const SizedBox()
                      : const Text("Upload KTP withh selfie",
                          style: TextStyle(fontSize: 12, color: Colors.white))
                ],
              ),
            ),
          ),
          const SizedBox(height: 23),
          Container(
              width: 328,
              padding: const EdgeInsets.all(12),
              color: const Color.fromRGBO(217, 217, 217, 0.25),
              child: const Text(
                  "Please make sure your face can be seen clearly and your ID Card is not blurred.",
                  style: TextStyle(fontSize: 16))),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: !clicked ? null : navigateToLogin,
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.maxFinite, 48),
                backgroundColor: !clicked
                    ? Colors.grey
                    : const Color.fromRGBO(13, 110, 253, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text(
              "Submit",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
