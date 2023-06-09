import 'package:ac_88/transaction/transactionWidget.dart';
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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                text: "Ongoing",
              ),
              Tab(
                text: "History",
              ),
            ]),
            title: const Text("AC88"),
          ),
          body: TabBarView(children: [
            Text("Ongoing Task"),
            SingleChildScrollView(
              child: Column(
                children: [
                  TransactionWidget(
                    name: "Dudung",
                    problem: "Selang AC Bocor",
                    price: "120,000",
                    status: false,
                    date: '28 April 2023',
                  ),
                  TransactionWidget(
                    name: "Dadang",
                    problem: "Cuci AC",
                    price: "50,000",
                    status: true,
                    date: '23 April 2023',
                  ),
                  TransactionWidget(
                    name: "Dodong",
                    problem: "Freon Bocor",
                    price: "150,000",
                    status: false,
                    date: '18 April 2023',
                  ),
                  TransactionWidget(
                    name: "Dedeng",
                    problem: "Compresor Rusak",
                    price: "350,000",
                    status: false,
                    date: '14 April 2023',
                  ),
                  TransactionWidget(
                    name: "Dadang",
                    problem: "Ganti AC",
                    price: "650,000",
                    status: false,
                    date: '14 April 2023',
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
