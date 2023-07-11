import 'package:ac_88/transaction/OrderDetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../chat/chat.dart';
import '../currencyformat.dart';

class TransactionWidget extends StatefulWidget {
  String name;
  String problem;
  int price;
  int price1;
  String date;
  int status;
  TransactionWidget({
    Key? key,
    required this.name,
    required this.problem,
    required this.price,
    required this.price1,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => OrderDetail(
                  name: widget.name,
                  date: widget.date,
                  problem: widget.problem,
                  status: widget.status,
                  price: widget.price,
                )));
      },
      child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 10, 17, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 10, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.date,
                        style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                      Text(
                        widget.status == 1
                            ? "Completed"
                            : widget.status == 2
                                ? ""
                                : "Cancelled",
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: widget.status == 1
                                ? Colors.green
                                : widget.status == 2
                                    ? Colors.white
                                    : Colors.red),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, top: 3, right: 8),
                                child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            13, 110, 253, 1)),
                                    child: const Icon(
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
                                  widget.name,
                                  style: GoogleFonts.lexendDeca(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  widget.problem,
                                  style: GoogleFonts.lexendDeca(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 8),
                                child: Text(
                                  "Total Harga",
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.grey[500]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Text(
                                  CurrencyFormat.convertToIdr(widget.price1, 0),
                                  style: GoogleFonts.lexendDeca(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (widget.status == 2)
                            Padding(
                              padding: const EdgeInsets.only(right: 8, top: 8),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(13, 110, 253, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => ChatCustomer(
                                                name: "Diding",
                                                imagePath: "assets/profile.png",
                                                index: 1)));
                                  },
                                  child: Text("Chat")),
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
