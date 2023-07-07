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
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          height: 155,
          child: Column(
            children: [
              Text(
                "Your order :",
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text("Engineer Name : Diding",
                  style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
