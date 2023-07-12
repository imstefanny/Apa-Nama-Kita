import 'package:ac_88/home/orderItem.dart';
import 'package:flutter/material.dart';

class OrderType {
  String name;
  String imagePath;
  OrderType(this.name, this.imagePath);
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<OrderType> orderList = [
    OrderType('Rivaldi', 'assets/sumin2.png'),
    OrderType('Ipana',
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/04/09/1847891814.png'),
    OrderType('Paris fernandes',
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/04/09/1847891814.png'),
    OrderType('Bartender Meow', 'assets/meong-bartender.jpg'),
    OrderType('Meow jobless', 'assets/meong-bartender.jpg'),
    OrderType('Didi', 'assets/meong-bartender.jpg'),
    OrderType('Cioman', 'assets/meong-bartender.jpg'),
    OrderType('Meow meow', 'assets/meong-bartender.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your orders",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                      "Your order will gone when customer finish\ntheir transaction",
                      style: TextStyle(
                          color: Color.fromRGBO(140, 140, 140, 1),
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 20),
                  for (var i = 0; i < orderList.length; i++) ...[
                    if (i > 0) const SizedBox(height: 16),
                    OrderItem(
                        name: orderList[i].name,
                        imagePath: orderList[i].imagePath)
                  ],
                ],
              ),
            )));
  }
}
