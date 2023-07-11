import 'dart:io';

import 'package:ac_88/payment/uploadreceipt.dart';
import 'package:ac_88/profile/imgproviderprofile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../register/registerProvider.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulating image loading delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var prov = Provider.of<registerProvider>(context);
    var imgprov = Provider.of<ImagePickerProviderProfile>(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Top up",
            style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                              child: imgprov.img != null
                                  ? ClipOval(
                                      child: Image.file(
                                        File(imgprov.img!.path),
                                        width: 150,
                                        height: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : CircleAvatar(
                                      radius: 50,
                                      backgroundImage: NetworkImage(
                                          "https://loremflickr.com/320/240?random=8"),
                                    ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(17, 15, 0, 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    !prov.tfname.text.isEmpty
                                        ? Text("${prov.tfname.text}",
                                            style: GoogleFonts.lexendDeca(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 24))
                                        : Text("<Your name>",
                                            style: GoogleFonts.lexendDeca(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 24)),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 14, 0, 0),
                                      child: Text(
                                        "Rp 88,000",
                                        style: GoogleFonts.lexendDeca(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text(
                    "Scan the barcode / use VA to pay",
                    style: GoogleFonts.lexendDeca(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: _isLoading
                    ? TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0.0, end: 1),
                        duration: const Duration(milliseconds: 3000),
                        builder: (context, value, _) =>
                            CircularProgressIndicator(value: value),
                      ) // Display the progress indicator while loading
                    : Image.network(
                        'https://www.freepnglogos.com/uploads/barcode-png/barcode-openkm-18.png',
                        width: 200,
                      ),
              )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 25),
                  child: Text(
                    "How to pay",
                    style: GoogleFonts.lexendDeca(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 25, right: 25),
                  child: Text(
                    "1. Open your mobile banking app or go to ATM\n2. Choose Others > Transfer > BCA Virtual Account\n3. Enter this number 80777082366552003\n4. On confirmation page, make sure the detail payment match with the total amount\n5. Save the receipt of payment as a proof of payment",
                    style: GoogleFonts.lexendDeca(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Center(
                      child: Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: SizedBox(
                        height: 55,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(13, 110, 253, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {
                              Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => UploadReceipt()));
                            },
                            child: Text(
                              "Upload Receipt",
                              style: GoogleFonts.lexendDeca(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )),
                      ),
                    )),
            ]),
          ),
        ));
  }
}
