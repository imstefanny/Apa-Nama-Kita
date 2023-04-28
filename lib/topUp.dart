import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text("Top up",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
              const SizedBox(height: 12),
              Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 16.0,
                      spreadRadius: 0.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ], borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(500)),
                          child: Image.asset(
                            "assets/sumin.jpg",
                            fit: BoxFit.cover,
                            width: 77,
                            height: 77,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Kelly", style: TextStyle(fontSize: 20)),
                            Text("Rp. 88,000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 50),
              SizedBox(
                height: 220,
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 40,
                  children: [
                    Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 16.0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ], borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: const [Text("5.000")],
                        )),
                    Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 16.0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ], borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: const [Text("7.500")],
                        )),
                    Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 16.0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ], borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: const [Text("10.000")],
                        )),
                    Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 16.0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ], borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: const [Text("15.000")],
                        )),
                    Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 16.0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ], borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: const [Text("20.000")],
                        )),
                    Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 16.0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ], borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: const [Text("25.000")],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
                        shape: const StadiumBorder(),
                        fixedSize: const Size(180, 40)),
                    child: const Text("Pay",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
              )
            ],
          )),
    );
  }
}
