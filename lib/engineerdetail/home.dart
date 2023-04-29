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
  final List<Map> myProducts =
      List.generate(5, (index) => {"id": index, "name": "Engineer $index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(17, 50, 25, 0),
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
        cardWithAppBarOnly(),
      ],
    )));
  }

  Widget cardWithAppBarOnly() => TextButton(
        onPressed: () => showDialog(
          context: context,
          builder: (builder) => XenPopupCard(
              body: Center(
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
          padding: const EdgeInsets.fromLTRB(17, 3, 25, 0),
          child: Container(
            height: 665,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: myProducts.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        width: 140,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.grey[350],
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: CircleAvatar(
                                  backgroundColor: Color.fromRGBO(
                                      253, 23, Random().nextInt(256), 1),
                                  radius: 50,
                                  child:
                                      Text(myProducts[index]["id"].toString()),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 15, 25, 0),
                              child: Text(
                                myProducts[index]["name"],
                                style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 4, 25, 0),
                              child: Text(
                                "2 years experience",
                                style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 4, 25, 0),
                              child: Text(
                                "Medan",
                                style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          ),
        ),
      );
}
