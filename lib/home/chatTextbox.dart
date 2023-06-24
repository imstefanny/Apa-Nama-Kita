import 'package:flutter/material.dart';

class ChatTextBox extends StatefulWidget {
  const ChatTextBox({super.key});

  @override
  State<ChatTextBox> createState() => _ChatTextBoxState();
}

class _ChatTextBoxState extends State<ChatTextBox> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(width: 1)), color: Colors.white),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Type your message...',
              suffixIcon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.indigo),
                padding: const EdgeInsets.all(14),
                child: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              filled: true,
              fillColor: Colors.blueGrey[50],
              labelStyle: const TextStyle(fontSize: 12),
              contentPadding: const EdgeInsets.all(20),
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
        ),
      ),
    );
  }
}
