import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../unorderedList.dart';

class UploadIdCard extends StatefulWidget {
  final VoidCallback nextPage;
  const UploadIdCard({super.key, required this.nextPage});

  @override
  State<UploadIdCard> createState() => _UploadIdCardState();
}

class _UploadIdCardState extends State<UploadIdCard> {
  var clicked = false;

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
              height: 200,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(201, 201, 201, 1),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      clicked ? "assets/fakeidcard.png" : "assets/idcard.png"),
                  clicked ? const SizedBox() : const SizedBox(height: 14),
                  clicked
                      ? const SizedBox()
                      : const Text("Upload KTP",
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Upload Guide",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                UnorderedList(const [
                  "Make sure you are using an original ID Card, not a photocopy",
                  "Make sure the photo is not blur",
                  "Make sure the photo is not cropped",
                  "Make sure there is no light reflected on your photo",
                  "Make sure your phone is upright when the photo is taken ",
                ]),
              ],
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: !clicked ? null : widget.nextPage,
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.maxFinite, 48),
                backgroundColor: !clicked
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
        ],
      ),
    );
  }
}
