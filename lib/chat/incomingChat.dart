import 'package:flutter/material.dart';

class IncomingChat extends StatefulWidget {
  const IncomingChat({super.key});

  @override
  State<IncomingChat> createState() => _IncomingChatState();
}

class _IncomingChatState extends State<IncomingChat> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(right: 100, left: 16),
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color.fromRGBO(229, 248, 255, 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("12:57 WIB",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                SizedBox(height: 4),
                Text(
                  "Iya Mas, Saya sedang dalam perjalan menuju lokasi y mas",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
