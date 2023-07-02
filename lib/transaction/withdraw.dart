import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  var _balance = '';
  var _bankNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "AC88",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Withdraw balance",
                        style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      onChanged: (text) {
                        setState(() {
                          _balance = text;
                        });
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          labelText: "Ex: 50,000",
                          floatingLabelBehavior: FloatingLabelBehavior.never),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("BCA Bank Number",
                        style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      onChanged: (text) {
                        setState(() {
                          _bankNumber = text;
                        });
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          labelText: "Ex: 8195358181",
                          floatingLabelBehavior: FloatingLabelBehavior.never),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: _balance.isEmpty || _bankNumber.isEmpty
                        ? null
                        : () {
                            Navigator.pop(context);
                          },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        backgroundColor: const Color.fromRGBO(13, 110, 253, 1)),
                    child: const Text("Withdraw"),
                  ),
                  const SizedBox(height: 24),
                ]),
          ),
        ),
      ),
    );
  }
}
