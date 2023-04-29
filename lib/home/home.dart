import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      ],
    )));
  }
}
