import 'package:ac_88/chat/orderItem.dart';
import 'package:ac_88/enginnerdetail/engineerprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListChat extends StatefulWidget {
  const ListChat({super.key});

  @override
  State<ListChat> createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<EngineerProvider>(context);
    var tmp = prov.jsonData['data'];
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Chat",
            style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < tmp.length; i++) ...[
                    if (i > 0) const SizedBox(height: 16),
                    OrderItem(name: tmp[i]["name"], imagePath: tmp[i]["img"], index: i,)
                  ],
                ],
              ),
            )));
  }
}
