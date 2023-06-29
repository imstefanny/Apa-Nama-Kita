import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
        body: SingleChildScrollView(
          child: Container(
            height: 0.9 * height,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Text(
                                      "Kelly",
                                      style:
                                          GoogleFonts.lexendDeca(fontSize: 24),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 14, 0, 0),
                                    child: Text(
                                      "Rp 88,000",
                                      style: GoogleFonts.lexendDeca(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text(
                    "Scan the barcode / use VA to pay",
                    style: GoogleFonts.lexendDeca(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Image.network(
                  "https://www.freepnglogos.com/uploads/barcode-png/barcode-openkm-18.png",
                  width: 200,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 17, left: 25),
                child: Text(
                  "How to pay",
                  style: GoogleFonts.lexendDeca(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 25, right: 25),
                  child: Text(
                    "1. Open your mobile banking app or go to ATM\n2. Choose Others > Transfer > BCA Virtual Account\n3. Enter this number 80777082366552003\n4. On confirmation page, make sure the detail payment match with the total amount\n5. Save the receipt of payment as a proof of payment",
                    style: GoogleFonts.lexendDeca(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: SizedBox(
                  height: 55,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: Text(
                        "Upload Receipt",
                        style: GoogleFonts.lexendDeca(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )),
                ),
              ))
            ]),
          ),
        ));
  }
}
