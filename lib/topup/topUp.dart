import 'package:ac_88/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Top up",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15)),
                height: 120,
                width: 350,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                        child: CircleAvatar(
                          radius: 50,
                          child: Icon(Icons.account_circle),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Kelly",
                                  style: GoogleFonts.lexendDeca(fontSize: 24),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                                child: Text(
                                  "Rp 88,000",
                                  style: GoogleFonts.lexendDeca(fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 55, 25, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15)),
                          height: 85,
                          width: 85,
                          child: Column(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                margin: EdgeInsets.all(15),
                                child: Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(13, 110, 253, 1),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Text("Rp 50,000",
                                  style: GoogleFonts.lexendDeca(fontSize: 12))
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15)),
                          height: 85,
                          width: 85,
                          child: Column(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                margin: EdgeInsets.all(15),
                                child: Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(13, 110, 253, 1),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Text("Rp 100,000",
                                  style: GoogleFonts.lexendDeca(fontSize: 12))
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15)),
                          height: 85,
                          width: 85,
                          child: Column(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                margin: EdgeInsets.all(15),
                                child: Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(13, 110, 253, 1),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Text("Rp 150,000",
                                  style: GoogleFonts.lexendDeca(fontSize: 12))
                            ],
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15)),
                            height: 85,
                            width: 85,
                            child: Column(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  margin: EdgeInsets.all(15),
                                  child: Icon(
                                    Icons.monetization_on,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(13, 110, 253, 1),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                Text("Rp 200,000",
                                    style: GoogleFonts.lexendDeca(fontSize: 12))
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 26),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15)),
                            height: 85,
                            width: 85,
                            child: Column(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  margin: EdgeInsets.all(15),
                                  child: Icon(
                                    Icons.monetization_on,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(13, 110, 253, 1),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                Text("Rp 250,000",
                                    style: GoogleFonts.lexendDeca(fontSize: 12))
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15)),
                            height: 85,
                            width: 85,
                            child: Column(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  margin: EdgeInsets.all(15),
                                  child: Icon(
                                    Icons.monetization_on,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(13, 110, 253, 1),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                Text("Rp 300,000",
                                    style: GoogleFonts.lexendDeca(fontSize: 12))
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: SizedBox(
                    height: 55,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Payment()));
                      },
                      child: Text("Pay",
                          style: GoogleFonts.lexendDeca(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
