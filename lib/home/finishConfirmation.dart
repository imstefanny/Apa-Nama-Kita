import 'package:ac_88/engineerHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FinishConfirmation extends StatefulWidget {
  const FinishConfirmation({super.key});

  @override
  State<FinishConfirmation> createState() => _FinishConfirmationState();
}

class _FinishConfirmationState extends State<FinishConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: 340,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Column(children: [
          const Text("Confirmation",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            width: 180,
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
              ],
            ),
            child: Row(
              children: [
                Image.asset('assets/sumin2.png', width: 32, height: 32),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Rivaldi"),
                    Text("Jln. Asia no 18", style: TextStyle(fontSize: 12))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
              "Fill the code that customer give to you, after that your transaction will finish",
              style: TextStyle(
                  color: Color.fromRGBO(140, 140, 140, 1),
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: 'Tx Code',
              filled: true,
              fillColor: Colors.blueGrey[50],
              labelStyle: const TextStyle(fontSize: 12),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade50),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade50),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  backgroundColor: const Color.fromRGBO(13, 110, 253, 1)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                child: Text("Finish",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )),
        ]),
      ),
    );
  }
}
