import 'dart:io';
import 'package:ac_88/profile/imgprovider.dart';
import 'package:ac_88/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../register/registerProvider.dart';
import 'Image_Picker_Button.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<registerProvider>(context);
    var imgprov = Provider.of<ImagePickerProvider>(context);
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
          padding: EdgeInsets.only(
              top: 0.03 * height,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Container(
              height: 0.75 * height,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0.07 * width),
                      child: Text(
                        "Edit Profile",
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0.07 * width, top: 0.03 * height),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: EdgeInsets.only(right: 0.1 * width),
                              child: SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            width: 2, // the thickness
                                            color: Colors
                                                .grey // the color of the border
                                            ),
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)))),
                                    onPressed: () {
                                      showModalBottomSheet<void>(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: 200,
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    ButtonImagePicker(
                                                        isGallery: true,
                                                        title:
                                                            'Choose from Gallery',),
                                                    ButtonImagePicker(
                                                        isGallery: false,
                                                        title:
                                                            'Choose from Camera'),
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                    },
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
                              errorText: prov.isNameEmpty
                                  ? "Name may not be empty"
                                  : null,
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
                                      backgroundColor:
                                          Color.fromRGBO(13, 110, 253, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)))),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => Profile()));
                                  },
                                  child: Text("Save",
                                      style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14))))),
                    )
                  ]),
            ),
          )),
    );
  }
}
