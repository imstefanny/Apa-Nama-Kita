import 'package:flutter/material.dart';

showConfirmAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: const Text("Accept"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16))),
    title: const Text("Accept confirmation"),
    titlePadding: const EdgeInsets.only(top: 16, left: 16),
    contentPadding: const EdgeInsets.only(top: 16, left: 16),
    buttonPadding: const EdgeInsets.all(16),
    content: const Text("Are sure you want to Accept\nthis ?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
