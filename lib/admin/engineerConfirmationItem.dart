import 'package:flutter/material.dart';

import 'paymentConfirmDialog.dart';
import 'paymentRejectDialog.dart';
import 'previewImage.dart';

class EngineerConfirmationItem extends StatefulWidget {
  final String name;
  const EngineerConfirmationItem({super.key, required this.name});

  @override
  State<EngineerConfirmationItem> createState() =>
      _EngineerConfirmationItemState();
}

class _EngineerConfirmationItemState extends State<EngineerConfirmationItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(13, 110, 253, 1)),
                child: const Icon(Icons.assignment_ind_outlined,
                    color: Colors.white),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => const PreviewImage(
                              pathImage: 'assets/fakeidcard.png'));
                    },
                    child: const Text("See image detail",
                        style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(140, 140, 140, 1))),
                  )
                ],
              ),
              const Spacer(),
              const Text("ID-Card",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      backgroundColor: const Color.fromRGBO(13, 110, 253, 1)),
                  onPressed: () {
                    showConfirmAlertDialog(context);
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
                    child: Text("Accept",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
              const SizedBox(width: 45),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      backgroundColor: const Color.fromRGBO(255, 0, 15, 1)),
                  onPressed: () {
                    showRejectAlertDialog(context);
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
                    child: Text("Reject",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ))
            ],
          )
        ],
      ),
    );
    ;
  }
}
