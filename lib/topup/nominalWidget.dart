import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class NominalWidget extends StatefulWidget {
  String nominal;
  bool enableborder;
  NominalWidget({
    Key? key,
    required this.nominal,
    required this.enableborder,
  }) : super(key: key);

  @override
  State<NominalWidget> createState() => _NominalWidgetState();
}

class _NominalWidgetState extends State<NominalWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
            border: widget.enableborder
                ? Border.all(color: Colors.blue, width: 2)
                : null,
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15)),
        height: 0.2 * width,
        width: 0.2 * width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 0.1 * width,
              width: 0.1 * width,
              margin: EdgeInsets.all(15),
              child: Icon(
                Icons.monetization_on,
                color: Colors.white,
                size: 0.05 * width,
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(13, 110, 253, 1),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Text("${widget.nominal}",
                style: GoogleFonts.lexendDeca(fontSize: 15)),
            SizedBox(height: 5),
          ],
        ));
  }
}
