import 'dart:math';
import 'package:ac_88/enginnerdetail/engineerdetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../enginnerdetail/engineerprovider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<EngineerProvider>(context);
    var tmp = prov.jsonData['data'];
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "AC88",
            style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 5, 25, 0),
            child: Text(
              "Meet our Engineers",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 3, 25, 0),
            child: Text(
              "Let’s call our engineer to maintain your cooler",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(350, 55),
                      backgroundColor: Colors.grey[200]),
                  onPressed: () {},
                  child: Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 28.0,
                      ),
                    ),
                    Text(
                      "Jln. Gajah Kuda No. 12",
                      style: GoogleFonts.lexendDeca(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ])),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 8, right: 15),
            child: Container(
              height: 550,
              width: 450,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: tmp.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      width: 140,
                      height: 250,
                      child: GestureDetector(
                        onTap: () {},
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    EngineerDetail(index: index));
                          },
                          child: Card(
                            elevation: 6,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: CircleAvatar(
                                      radius: 55,
                                      backgroundImage:
                                          NetworkImage(tmp[index]["img"]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 15),
                                    child: Text(
                                      tmp[index]['name'],
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 15),
                                    child: Text(
                                      "${tmp[index]['exp']} year experience",
                                      style: GoogleFonts.lexendDeca(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 15),
                                    child: Text(
                                      tmp[index]['location'],
                                      style: GoogleFonts.lexendDeca(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ])));
  }
}
