import 'package:ac_88/home/chatEngineer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OrderItem extends StatefulWidget {
  final String name;
  final String imagePath;
  const OrderItem({super.key, required this.name, required this.imagePath});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatEngineer();
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(14),
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
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            widget.imagePath.contains('https')
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      widget.imagePath,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ))
                : Image.asset(widget.imagePath, width: 50),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const Text("Jln. Asia no 18")
              ],
            )
          ],
        ),
      ),
    );
  }
}
