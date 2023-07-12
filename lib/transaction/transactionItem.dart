import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TransactionItem extends StatefulWidget {
  final String name;
  final String action;
  final String price;
  const TransactionItem(
      {super.key,
      required this.name,
      required this.action,
      required this.price});

  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(13, 110, 253, 1)),
          child: const Icon(Icons.payments_outlined, color: Colors.white),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            Text(widget.action,
                style: const TextStyle(
                    fontSize: 12, color: Color.fromRGBO(140, 140, 140, 1)))
          ],
        ),
        const Spacer(),
        Text(widget.price,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
      ]),
    );
  }
}