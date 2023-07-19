import 'package:ac_88/snackbar.dart';
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
  bool isFiltered = false;
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    // Initialize filteredTransactions with allTransactions
    filteredTransactions = List.from(allTransactions);
  }

  void clearFilter() {
    setState(() {
      selectedDate = null;
      isFiltered = false;
    });

    var _snackBar = CustomSnackBar();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(_snackBar.getSnackBar(
                                                    context,
                                                    "Filter Selected Dates Removed",));
  }

  void sortTransactionsByDate(DateTime selectedDate) {
    setState(() {
      DateFormat inputFormat = DateFormat('dd MMMM yyyy', 'en_US');
      DateFormat outputFormat = DateFormat('yyyy-MM-dd');

      filteredTransactions = allTransactions.where((transaction) {
        DateTime transactionDate = inputFormat.parse(transaction['date']);
        return DateFormat('yyyy-MM-dd').format(transactionDate) ==
            DateFormat('yyyy-MM-dd').format(selectedDate);
      }).toList();
      filteredTransactions.sort((a, b) {
        DateTime dateA = inputFormat.parse(a['date']);
        DateTime dateB = inputFormat.parse(b['date']);
        return dateA.compareTo(dateB);
      });
      isFiltered = true;
      this.selectedDate = selectedDate;
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

  String formatSelectedDate() {
    if (selectedDate != null) {
      return DateFormat('dd MMMM yyyy').format(selectedDate!);
    } else {
      return 'No date selected';
    }
  }

  @override
  Widget build(BuildContext context) {
    var provHist = Provider.of<TransactionProvider>(context);
    allTransactions = List.from(provHist.dummyData['dummy']);

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
                children: List<Widget>.generate(
                  provHist.dummyData["ongoing"].length,
                  (index) {
                    return TransactionWidget(
                      name: provHist.dummyData["ongoing"][index]["name"],
                      problem: provHist.dummyData["ongoing"][index]["problem"],
                      price: provHist.dummyData["ongoing"][index]["price"],
                      price1: provHist.dummyData["ongoing"][index]["price1"],
                      status: provHist.dummyData["ongoing"][index]["status"],
                      date: provHist.dummyData["ongoing"][index]["date"],
                    );
                  },
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: selectedDate != null
                            ? GestureDetector(
                                onTap: clearFilter,
                                child: Row(
                                  children: [
                                    Text(
                                      'Filtered Date ${formatSelectedDate()}',
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(Icons.close)
                                  ],
                                ),
                              )
                            : Container(),
                      ),
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
                    ],
                  ),
                  if (isFiltered && filteredTransactions.isNotEmpty)
                    Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: filteredTransactions.length,
                          itemBuilder: (context, index) {
                            return TransactionWidget(
                              name: filteredTransactions[index]["name"],
                              problem: filteredTransactions[index]["problem"],
                              price: filteredTransactions[index]["price"],
                              price1: filteredTransactions[index]["price1"],
                              status: filteredTransactions[index]["status"],
                              date: filteredTransactions[index]["date"],
                            );
                          },
                        ),
                      ],
                    )
                  else if (isFiltered && filteredTransactions.isEmpty)
                    Container(
                      child: Text("You have no data on this date"),
                    )
                  else
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: allTransactions.length,
                      itemBuilder: (context, index) {
                        return TransactionWidget(
                          name: allTransactions[index]["name"],
                          problem: allTransactions[index]["problem"],
                          price: allTransactions[index]["price"],
                          price1: allTransactions[index]["price1"],
                          status: allTransactions[index]["status"],
                          date: allTransactions[index]["date"],
                        );
                      },
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
