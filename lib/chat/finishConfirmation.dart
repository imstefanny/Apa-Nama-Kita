import 'package:ac_88/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FinishConfirmation extends StatefulWidget {
  final String name;
  final String imagePath;
  const FinishConfirmation(
      {super.key, required this.name, required this.imagePath});

  @override
  State<FinishConfirmation> createState() => _FinishConfirmationState();
}

class _FinishConfirmationState extends State<FinishConfirmation> {
  var confirmCode = "";
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
                widget.imagePath.contains('https')
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          widget.imagePath,
                          width: 32,
                          height: 32,
                          fit: BoxFit.cover,
                        ))
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(widget.imagePath, width: 32)),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name),
                    const Text("Jln. Asia no 18",
                        style: TextStyle(fontSize: 12))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
              "Fill the code that engineer give to you, after that your transaction will finish",
              style: TextStyle(
                  color: Color.fromRGBO(140, 140, 140, 1),
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          TextField(
            onChanged: (e) {
              setState(() {
                confirmCode = e;
              });
            },
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
              onPressed: confirmCode.isEmpty
                  ? null
                  : () {
                      var count = 0;
                      Navigator.popUntil(context, (_) {
                        return count++ == 2;
                      });
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
