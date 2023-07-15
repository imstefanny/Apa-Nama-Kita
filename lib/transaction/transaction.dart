import 'package:ac_88/transaction/dummy.dart';
import 'package:ac_88/transaction/transactionWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key});

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  List<Map<String, dynamic>> filteredTransactions = [];
  List<Map<String, dynamic>> allTransactions = [];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var provHist = Provider.of<TransactionProvider>(context);
    allTransactions = List.from(provHist.dummyData['dummy']);
    filteredTransactions = List.from(allTransactions);
    void sortTransactionsByDate(DateTime selectedDate) {
      setState(() {
        DateFormat dateFormat = DateFormat('dd MMMM yyyy', 'en_US');
    filteredTransactions = allTransactions
        .where((transaction) {
          DateTime transactionDate = dateFormat.parse(transaction['date']);
          return transactionDate.year == selectedDate.year &&
              transactionDate.month == selectedDate.month &&
              transactionDate.day == selectedDate.day;
        })
        .toList();
        filteredTransactions.sort((a, b) {
          DateTime dateA = DateTime.parse(a['date']);
          DateTime dateB = DateTime.parse(b['date']);
          return dateA.compareTo(dateB);
        });
      });
    }

    Future<void> showDatePickerDialog() async {
      final DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );

      if (selectedDate != null) {
        sortTransactionsByDate(selectedDate);
      }
    }

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
            ],
          ),
          title: Text(
            "Transaction",
            style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: ongoingwidget,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showDatePickerDialog();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15, top: 15),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.filter_alt_outlined,
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                  for (var i = 0; i < filteredTransactions.length; i++)
                    TransactionWidget(
                      name: filteredTransactions[i]["name"],
                      problem: filteredTransactions[i]["problem"],
                      price: filteredTransactions[i]["price"],
                      price1: filteredTransactions[i]["price1"],
                      status: filteredTransactions[i]["status"],
                      date: filteredTransactions[i]["date"],
                    ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
