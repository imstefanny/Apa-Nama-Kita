import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionWidget extends StatelessWidget {
  String name;
  String problem;
  String price;
  TransactionWidget({
    Key? key,
    required this.name,
    required this.problem,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 20, 17, 0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        height: 70,
        width: 350,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(13, 110, 253, 1)),
                      child: Icon(
                        Icons.receipt,
                        color: Colors.white,
                      )),
                )),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    problem,
                    style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Text(
                  "Rp ${price}",
                  style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
