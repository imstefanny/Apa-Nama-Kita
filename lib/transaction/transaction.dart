import 'package:ac_88/transaction/dummy.dart';
import 'package:ac_88/transaction/transactionWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../chat/chat.dart';

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
    var provHist = Provider.of<TransactionProvider>(context);

    List<Widget> ongoingwidget = [];
    for (int i = 0; i < provHist.dummyData["ongoing"].length; i++) {
      ongoingwidget.add(TransactionWidget(
        name: provHist.dummyData["ongoing"][i]["name"],
        problem: provHist.dummyData["ongoing"][i]["problem"],
        price: provHist.dummyData["ongoing"][i]["price"],
        price1: provHist.dummyData["ongoing"][i]["price1"],
        status: provHist.dummyData["ongoing"][i]["status"],
        date: provHist.dummyData["ongoing"][i]["date"],
      ));
    }

    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 2,
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
              "Transaction",
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: ongoingwidget,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  for (var i = 0; i < provHist.dummyData["dummy"].length; i++)
                    TransactionWidget(
                      name: provHist.dummyData["dummy"][i]["name"],
                      problem: provHist.dummyData["dummy"][i]["problem"],
                      price: provHist.dummyData["dummy"][i]["price"],
                      price1: provHist.dummyData["dummy"][i]["price1"],
                      status: provHist.dummyData["dummy"][i]["status"],
                      date: provHist.dummyData["dummy"][i]["date"],
                    ),
                  const SizedBox(height: 10.0),
                ],
              ),
            )
          ]),
        ));
  }
}
