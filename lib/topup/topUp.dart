import 'package:ac_88/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  bool enableBorder1 = false;
  bool enableBorder2 = false;
  bool enableBorder3 = false;
  bool enableBorder4 = false;
  bool enableBorder5 = false;
  bool enableBorder6 = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
                height: 0.145 * height,
                width: 0.87 * width,
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
                          padding: const EdgeInsets.fromLTRB(17, 15, 0, 15),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() => enableBorder1 = !enableBorder1);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border: enableBorder1
                                  ? Border.all(color: Colors.blue, width: 2)
                                  : null,
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15)),
                          height: 0.103 * height,
                          width: 0.103 * height,
                          child: Column(
                            children: [
                              Container(
                                height: 0.085 * width,
                                width: 0.085 * width,
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
                    GestureDetector(
                      onTap: () {
                        setState(() => enableBorder2 = !enableBorder2);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border: enableBorder2
                                  ? Border.all(color: Colors.blue, width: 2)
                                  : null,
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15)),
                          height: 0.103 * height,
                          width: 0.103 * height,
                          child: Column(
                            children: [
                              Container(
                                height: 0.085 * width,
                                width: 0.085 * width,
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
                    GestureDetector(
                      onTap: () {
                        setState(() => enableBorder3 = !enableBorder3);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border: enableBorder3
                                  ? Border.all(color: Colors.blue, width: 2)
                                  : null,
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15)),
                          height: 0.103 * height,
                          width: 0.103 * height,
                          child: Column(
                            children: [
                              Container(
                                height: 0.085 * width,
                                width: 0.085 * width,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() => enableBorder4 = !enableBorder4);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                border: enableBorder4
                                    ? Border.all(color: Colors.blue, width: 2)
                                    : null,
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15)),
                            height: 0.103 * height,
                            width: 0.103 * height,
                            child: Column(
                              children: [
                                Container(
                                  height: 0.085 * width,
                                  width: 0.085 * width,
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
                      GestureDetector(
                        onTap: () {
                          setState(() => enableBorder5 = !enableBorder5);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                border: enableBorder5
                                    ? Border.all(color: Colors.blue, width: 2)
                                    : null,
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15)),
                            height: 0.103 * height,
                            width: 0.103 * height,
                            child: Column(
                              children: [
                                Container(
                                  height: 0.085 * width,
                                  width: 0.085 * width,
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
                      GestureDetector(
                        onTap: () {
                          setState(() => enableBorder6 = !enableBorder6);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                border: enableBorder6
                                    ? Border.all(color: Colors.blue, width: 2)
                                    : null,
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15)),
                            height: 0.103 * height,
                            width: 0.103 * height,
                            child: Column(
                              children: [
                                Container(
                                  height: 0.085 * width,
                                  width: 0.085 * width,
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
          ),
        ],
      ),
    );
  }
}
