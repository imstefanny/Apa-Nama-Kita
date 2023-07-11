import 'dart:io';

import 'package:ac_88/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UploadReceipt extends StatefulWidget {
  const UploadReceipt({super.key});

  @override
  State<UploadReceipt> createState() => _UploadReceiptState();
}

class _UploadReceiptState extends State<UploadReceipt> {
  final borderRadius = BorderRadius.circular(15);
  File? image;

  Future pickImage(source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTmp = File(image.path);
    setState(() {
      this.image = imageTmp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Upload Receipt",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Text(
                "You Can Upload Your Payment Receipt Here",
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 55),
                child: GestureDetector(
                  onTap: () {
                    image != null
                        ? null
                        : showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      ElevatedButton(
                                        onPressed: () async {
                                          pickImage(ImageSource.gallery);
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Choose From Gallery",
                                          style: GoogleFonts.lexendDeca(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () async {
                                          pickImage(ImageSource.camera);
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Choose From Camera",
                                          style: GoogleFonts.lexendDeca(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                  },
                  child: Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: image != null
                        ? ClipRRect(
                            borderRadius: borderRadius,
                            child: Image.file(
                              image!,
                              fit: BoxFit.fill,
                            ),
                          )
                        : Icon(
                            Icons.camera_alt_outlined,
                            size: 100,
                          ),
                  ),
                ),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: SizedBox(
                height: 55,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Profile()));
                    },
                    child: Text(
                      "Send",
                      style: GoogleFonts.lexendDeca(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    )),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
