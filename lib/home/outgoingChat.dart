import 'package:flutter/material.dart';

class OutgoingChat extends StatefulWidget {
  const OutgoingChat({super.key});

  @override
  State<OutgoingChat> createState() => _OutgoingChatState();
}

class _OutgoingChatState extends State<OutgoingChat> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 100, right: 16),
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color.fromRGBO(31, 120, 255, 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("12:57 WIB",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white)),
                SizedBox(height: 4),
                Text(
                  "Sebentar ya dex, lagi diproses",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
