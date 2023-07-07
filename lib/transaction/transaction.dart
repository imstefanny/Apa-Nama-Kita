import 'package:ac_88/transaction/OngoingDetails.dart';
import 'package:ac_88/transaction/transactionWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                physics: NeverScrollableScrollPhysics(),
                labelColor: Colors.black,
                indicatorColor: Color.fromRGBO(13, 110, 253, 1),
                tabs: [
                  Tab(
                    text: "Ongoing",
                  ),
                  Tab(
                    text: "History",
                  ),
                ]),
            title: Text(
              "AC88",
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(17, 20, 17, 0),
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
                        padding:
                            const EdgeInsets.only(left: 8, top: 10, right: 8),
                        child: Text(
                          "28 April 2023",
                          style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Column(
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
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                      "Diding",
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "Isi Ulang Freon",
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
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
                                          "Rp 100,000",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 8, top: 8),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromRGBO(13, 110, 253, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      DetailOngoing()));
                                        },
                                        child: Text("See Details")),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                ],
              ),
            )
          ]),
        ));
  }
}
