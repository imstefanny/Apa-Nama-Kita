import 'package:ac_88/login/login.dart';
import 'package:flutter/material.dart';

class ChangeForgotPass extends StatefulWidget {
  const ChangeForgotPass({super.key});

  @override
  State<ChangeForgotPass> createState() => _ChangeForgotPassState();
}

class _ChangeForgotPassState extends State<ChangeForgotPass> {
  var currPass = '';
  var newPass = '';
  var rePass = '';
  var hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "AC88",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Change Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 28),
            const Text("Current Password",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
              onChanged: (text) {
                setState(() {
                  currPass = text;
                });
              },
              obscureText: hidePass,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hidePass = !hidePass;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Enter your current password",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
            const SizedBox(height: 14),
            const Text("New Password",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
              onChanged: (val) {
                setState(() {
                  newPass = val;
                });
              },
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Min. 8 character",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
            const SizedBox(height: 14),
            const Text("Re-Enter Your Password",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
              onChanged: (val) {
                setState(() {
                  rePass = val;
                });
              },
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Min. 8 character",
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed:
                      (newPass.isEmpty || currPass.isEmpty || rePass.isEmpty)
                          ? null
                          : () {
                              Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => Login()));
                            },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
                      shape: const StadiumBorder(),
                      fixedSize: const Size(180, 40)),
                  child: const Text("Save",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}