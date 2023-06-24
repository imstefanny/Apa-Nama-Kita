import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailOngoing extends StatefulWidget {
  const DetailOngoing({super.key});

  @override
  State<DetailOngoing> createState() => _DetailOngoingState();
}

class _DetailOngoingState extends State<DetailOngoing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Details",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 25, 25, 0),
            child: Container(
              height: 155,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Center(
                      child: Text(
                        "Isi ulang Freon",
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Center(
                          child: Text(
                            "Engineer :",
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
