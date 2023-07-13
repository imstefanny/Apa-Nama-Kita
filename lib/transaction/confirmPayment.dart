import 'package:ac_88/bottomnavigation.dart';
import 'package:ac_88/transaction/transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmPaymentPage extends StatefulWidget {
  @override
  _ConfirmPaymentPageState createState() => _ConfirmPaymentPageState();
}

class _ConfirmPaymentPageState extends State<ConfirmPaymentPage> {
  String enteredPin = '';

  void enterDigit(String digit) {
    setState(() {
      if (enteredPin.length < 4) enteredPin += digit;
    });
  }

  void deleteDigit() {
    if (enteredPin.isNotEmpty) {
      setState(() {
        enteredPin = enteredPin.substring(0, enteredPin.length - 1);
      });
    }
  }

  void confirmPayment() {
    if (enteredPin == '1234') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                Icon(Icons.check_circle_outline_rounded,
                    color: Colors.green[400]),
                Text(
                  '   Payment Confirmed',
                  style: TextStyle(color: Colors.green[400]),
                ),
              ],
            ),
            content: Text('Your payment has been successfully confirmed.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => BottomNavBar()));
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Invalid PIN'),
            content: Text('Please enter a valid PIN to confirm the payment.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  Widget buildView(String digit, width) {
    return Container(
      width: 0.2 * width,
      height: 60.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
      child: Text(
        digit,
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }

  Widget buildPinDigit(String digit, width) {
    return GestureDetector(
      onTap: () {
        if (digit.isNotEmpty) {
          enterDigit(digit);
        }
      },
      child: Container(
        width: 0.25 * width,
        height: 60.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          digit,
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }

  Widget buildPinBackspace(width) {
    return GestureDetector(
      onTap: deleteDigit,
      child: Container(
        width: 0.25 * width,
        height: 60.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Icon(Icons.backspace),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'Confirm Payment',
          style: TextStyle(color: Colors.black),
          // style: GoogleFonts.lexendDeca(
          //     fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Enter your PIN to confirm the payment:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  for (int i = 0; i < enteredPin.length; i++)
                    buildView(enteredPin.substring(i, i + 1), width),
                  for (int i = enteredPin.length; i < 4; i++)
                    buildView("", width)
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildPinDigit('1', width),
                  buildPinDigit('2', width),
                  buildPinDigit('3', width),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildPinDigit('4', width),
                  buildPinDigit('5', width),
                  buildPinDigit('6', width),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildPinDigit('7', width),
                  buildPinDigit('8', width),
                  buildPinDigit('9', width),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildPinDigit('#', width),
                  buildPinDigit('0', width),
                  buildPinBackspace(width),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: ElevatedButton(
                onPressed: confirmPayment,
                child: Text('Confirm Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
