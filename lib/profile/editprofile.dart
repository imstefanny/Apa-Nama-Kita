import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../register/registerProvider.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<registerProvider>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "AC88",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 0.03 * height),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 0.07 * width),
              child: Text(
                "Edit Profile",
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(left: 0.07 * width, top: 0.03 * height),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundImage: NetworkImage(
                          "https://loremflickr.com/320/240?random=8"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0.1 * width),
                      child: SizedBox(
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                    width: 2, // the thickness
                                    color:
                                        Colors.grey // the color of the border
                                    ),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            onPressed: () {},
                            child: Text("Choose photo",
                                style: GoogleFonts.lexendDeca(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey))),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text('Name',
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(height: 5),
                  TextField(
                    controller: prov.tfname,
                    decoration: InputDecoration(
                      filled: true,
                      errorText:
                          prov.isNameEmpty ? "Name may not be empty" : null,
                      hintText: 'Sukro',
                      hintStyle: TextStyle(fontSize: 15),
                      isDense: true,
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Address',
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(height: 5),
                  TextField(
                    controller: prov.tfaddress,
                    decoration: InputDecoration(
                      filled: true,
                      errorText: prov.isAddressEmpty
                          ? "Address may not be empty"
                          : null,
                      hintText: 'Jln. Juda',
                      hintStyle: TextStyle(fontSize: 15),
                      isDense: true,
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 0.07 * height),
                  child: SizedBox(
                      height: 40,
                      width: 175,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          onPressed: () {},
                          child: Text("Save",
                              style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14))))),
            )
          ])),
    );
  }
}
