import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xen_popup_card/xen_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map> engineers = [
    {"name": "Suyono", "exp": "4", "location": "Medan"},
    {"name": "Suyona", "exp": "2", "location": "Medan"},
    {"name": "Suyoni", "exp": "3", "location": "Medan"},
    {"name": "Suyone", "exp": "5", "location": "Medan"},
    {"name": "Suyonu", "exp": "7", "location": "Medan"},
  ];
  @override
  Widget build(BuildContext context) {
    Widget PopUpDetailCard() => TextButton(
        onPressed: () => showDialog(
              context: context,
              builder: (builder) => AlertDialog(
                  title: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.account_circle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        "Cio",
                        style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        "Hi my name is Felicio, you can call me cio.I’ve been working as AC Engineer for a long time. Reserve me if u have any problem with your AC",
                        style: GoogleFonts.lexendDeca(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Reserved"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              minimumSize: Size(250, 55),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        )),
                  ],
                ),
              )),
            ),
        child: Padding(
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
                itemCount: engineers.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    width: 140,
                    height: 250,
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
                                backgroundImage: NetworkImage(
                                    "https://loremflickr.com/320/240?random=$index"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                engineers[index]['name'],
                                style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                "${engineers[index]['exp']} Years experience",
                                style: GoogleFonts.lexendDeca(
                                    fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                engineers[index]['location'],
                                style: GoogleFonts.lexendDeca(
                                    fontSize: 14, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));

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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          PopUpDetailCard()
        ],
      )),
    );
  }
}
