import 'package:ac_88/home/chatTextbox.dart';
import 'package:ac_88/home/finishConfirmation.dart';
import 'package:ac_88/home/incomingChat.dart';
import 'package:ac_88/home/outgoingChat.dart';
import 'package:flutter/material.dart';

class ChatEngineer extends StatefulWidget {
  const ChatEngineer({super.key});

  @override
  State<ChatEngineer> createState() => _ChatEngineerState();
}

class _ChatEngineerState extends State<ChatEngineer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(14),
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
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back)),
                      const SizedBox(width: 8),
                      Image.asset('assets/sumin2.png', width: 50, height: 50),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Rivaldi',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text("Jln. Asia no 18")
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: const [
                      SizedBox(height: 20),
                      IncomingChat(),
                      SizedBox(height: 16),
                      OutgoingChat(),
                    ],
                  ),
                ),
              ],
            ),
            const ChatTextBox(),
            Container(
              margin: const EdgeInsets.only(right: 24, left: 24, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Give the customer this code:",
                          style: TextStyle(
                              color: Color.fromRGBO(140, 140, 140, 1))),
                      Text("FV5C7K",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          backgroundColor:
                              const Color.fromRGBO(13, 110, 253, 1)),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) => FinishConfirmation());
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 8, bottom: 8),
                        child: Text("Finish",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
