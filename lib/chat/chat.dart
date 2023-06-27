import 'package:ac_88/chat/chatTextbox.dart';
import 'package:ac_88/chat/finishConfirmation.dart';
import 'package:ac_88/chat/incomingChat.dart';
import 'package:ac_88/chat/outgoingChat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import '../enginnerdetail/engineerprovider.dart';

class ChatCustomer extends StatefulWidget {
  final String name;
  final String imagePath;
  int index;

  ChatCustomer(
      {super.key,
      required this.name,
      required this.imagePath,
      required this.index});

  @override
  State<ChatCustomer> createState() => _ChatCustomerState();
}

class _ChatCustomerState extends State<ChatCustomer> {
  @override
  Widget build(BuildContext context) {
    String generateRandomString(int length) {
      final random = Random();
      const availableChars =
          'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
      final randomString = List.generate(length,
              (index) => availableChars[random.nextInt(availableChars.length)])
          .join();

      return randomString;
    }

    final randomCode = generateRandomString(6);
    var prov = Provider.of<EngineerProvider>(context);
    var tmp = prov.jsonData['data'];
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
                      widget.imagePath.contains('https')
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                widget.imagePath,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ))
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(widget.imagePath, width: 50)),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text("${tmp[widget.index]['address']}")
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
                      OutgoingChat(),
                      SizedBox(height: 16),
                      IncomingChat(),
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
                    children: [
                      Text("Give this code to your engineer:",
                          style: TextStyle(
                              color: Color.fromRGBO(140, 140, 140, 1))),
                      Text(randomCode,
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
                            builder: (_) => FinishConfirmation(
                                  name: widget.name,
                                  imagePath: widget.imagePath,
                                ));
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
