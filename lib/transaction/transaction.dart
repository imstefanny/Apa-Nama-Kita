import 'package:ac_88/transaction/transactionItem.dart';
import 'package:ac_88/transaction/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Completed Transaction",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 6),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("This is completed transaction that you earned",
                        style:
                            TextStyle(color: Color.fromRGBO(140, 140, 140, 1))),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    height: 130,
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 60),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 2),
                          ),
                        ]),
                    child: Column(
                      children: const [
                        Text("Total Balance", style: TextStyle(fontSize: 24)),
                        SizedBox(height: 16),
                        Text("Rp. 111,000",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        backgroundColor: const Color.fromRGBO(13, 110, 253, 1)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Withdraw();
                      }));
                    },
                    child: const Text("Withdraw"),
                  ),
                  const SizedBox(height: 24),
                  const TransactionItem(
                      name: 'Meow meow',
                      price: 'Rp240,000',
                      action: 'Ganti Kompressor'),
                  const SizedBox(height: 16),
                  const TransactionItem(
                      name: 'Rivaldi', price: 'Rp80,000', action: 'Cuci AC'),
                ]),
          ),
        ),
      ),
    );
  }
}
