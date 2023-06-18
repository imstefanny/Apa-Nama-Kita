import 'package:ac_88/enginnerdetail/engineerprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EngineerDetail extends StatefulWidget {
  EngineerDetail({super.key, required this.index});
  int index;

  @override
  State<EngineerDetail> createState() => _EngineerDetailState();
}

class _EngineerDetailState extends State<EngineerDetail> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<EngineerProvider>(context);
    var tmp = prov.jsonData['data'];
    return AlertDialog(
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Center(
        child: CircleAvatar(
          radius: 55,
          backgroundImage: NetworkImage(tmp[widget.index]['img']),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Center(
          child: Text(
            "${tmp[widget.index]['name']}",
            style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Center(
          child: Text(
            "Rp ${tmp[widget.index]['price']}",
            style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            Text(
              "Service :",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              " ${tmp[widget.index]['Service']}",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            Text(
              "Location :",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              " ${tmp[widget.index]['location']}",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          "Description :",
          style: GoogleFonts.lexendDeca(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      Text(
        "${tmp[widget.index]['desc']}",
        style: GoogleFonts.lexendDeca(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Reserved"),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: Size(250, 55),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
        ),
      )
    ]));
  }
}
