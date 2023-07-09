import 'package:ac_88/currencyformat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetail extends StatefulWidget {
  String date;
  String name;
  String problem;
  int status;
  int price;

  OrderDetail({
    super.key,
    required this.name,
    required this.date,
    required this.problem,
    required this.status,
    required this.price,
  });

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    double tax = widget.price * 0.05;
    double admin = widget.price * 0.02;
    double Total = widget.price + tax + admin;
    double discount = 0.1 * Total;
    double GrandTotal = Total - discount;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 2,
        backgroundColor: Colors.white,
        title: Text(
          "Order Detail",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8, left: 16),
            child: widget.status == 1
                ? Text(
                    "Order Completed",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  )
                : Text(
                    "Order Cancelled",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
          ),
          Divider(
            thickness: 1,
            indent: 15,
            endIndent: 15,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Date",
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey),
                ),
                Text(
                  widget.date,
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 5,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Text(
              "Detail Services",
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Services",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "${widget.problem}",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Address",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Jln. Gajah Duduk No 13B",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Order By",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Surya",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Engineer",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "${widget.name}",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 5,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Text(
              "Detail Receipt",
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Price (1 Service)",
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
                Text(
                  CurrencyFormat.convertToIdr(widget.price, 0),
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount",
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
                Text(
                  CurrencyFormat.convertToIdr(discount, 0),
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tax",
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
                Text(
                  CurrencyFormat.convertToIdr(tax, 0),
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Admin Services",
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
                Text(
                  CurrencyFormat.convertToIdr(admin, 0),
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grand Total",
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Text(
                  CurrencyFormat.convertToIdr(GrandTotal, 0),
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
