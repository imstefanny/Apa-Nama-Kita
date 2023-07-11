import 'dart:io';

import 'package:ac_88/payment/payment.dart';
import 'package:ac_88/profile/imgproviderprofile.dart';
import 'package:ac_88/register/registerProvider.dart';
import 'package:ac_88/topup/nominalWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../profile/imgproviderprofile.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  List<String> nominal = [
    'Rp 50,000',
    'Rp 100,000',
    'Rp 150,000',
    'Rp 200,000',
    'Rp 250,000',
    'Rp 300,000'
  ];
  List<bool> selected = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 55, 25, 0),
                  child: Container(
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                        ),
                        itemCount: nominal.length,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = [
                                  false,
                                  false,
                                  false,
                                  false,
                                  false,
                                  false
                                ];
                                selected[index] = true;
                              });
                            },
                            child: NominalWidget(
                                nominal: nominal[index],
                                enableborder: selected[index]),
                          );
                        }),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 55,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Payment()));
                      },
                      child: Text("Pay",
                          style: GoogleFonts.lexendDeca(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
