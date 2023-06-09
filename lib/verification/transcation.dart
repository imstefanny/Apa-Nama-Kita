import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                text: "Ongoing",
              ),
              Tab(
                text: "History",
              ),
            ]),
            title: const Text("AC88"),
          ),
          body: const TabBarView(
              children: [Text("Ongoing Task"), Text("History Task")]),
        ));
  }
}
