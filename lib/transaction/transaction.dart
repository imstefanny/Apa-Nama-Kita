import 'package:tugas_kelompok/transaction/transactionWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 50, 25, 0),
            child: Text(
              "Transaction",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 3, 25, 0),
            child: Text(
              "This is your reservation’s history of using our app",
              style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          TransactionWidget(
            name: "Susi",
            problem: "Freon Bocor",
            price: "88,000",
          ),
          TransactionWidget(
            name: "Santi",
            problem: "Cuci AC",
            price: "50,000",
          ),
          TransactionWidget(
            name: "Pandi Galih",
            problem: "Servis AC",
            price: "99,000",
          ),
        ],
      ),
    );
  }
}
