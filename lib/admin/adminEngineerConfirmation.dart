import 'package:ac_88/admin/engineerConfirmationItem.dart';
import 'package:flutter/material.dart';

class AdminEngineerConfirmation extends StatefulWidget {
  const AdminEngineerConfirmation({super.key});

  @override
  State<AdminEngineerConfirmation> createState() =>
      _AdminEngineerConfirmationState();
}

class _AdminEngineerConfirmationState extends State<AdminEngineerConfirmation> {
  List<String> dataPayment = ["Agus", "Valdo", "Mebius"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AC88",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 16, left: 16, right: 16, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Payment Confirmation",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              const SizedBox(height: 16),
              for (var i = 0; i < dataPayment.length; i++) ...[
                if (i > 0) const SizedBox(height: 20),
                EngineerConfirmationItem(name: dataPayment[i])
              ]
            ],
          ),
        ),
      ),
    );
    ;
  }
}
