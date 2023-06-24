import 'dart:io';

import 'package:ac_88/admin/paymentConfirmationItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdminPaymentConfirmation extends StatefulWidget {
  const AdminPaymentConfirmation({super.key});

  @override
  State<AdminPaymentConfirmation> createState() =>
      _AdminPaymentConfirmationState();
}

class _AdminPaymentConfirmationState extends State<AdminPaymentConfirmation> {
  List<String> dataPayment = ["Arisman", "Ipana", "oyranuS"];
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
                PaymentConfirmationItem(name: dataPayment[i])
              ]
            ],
          ),
        ),
      ),
    );
  }
}
