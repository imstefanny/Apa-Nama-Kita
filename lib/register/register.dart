import 'package:ac_88/register/confirmIdCard.dart';
import 'package:ac_88/register/registerData.dart';
import 'package:ac_88/register/uploadIdCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var stepperController = null;
  var currStep = 0;

  void nextPage() {
    setState(() {
      currStep += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stepper(
      currentStep: currStep,
      type: StepperType.horizontal,
      controlsBuilder: (context, details) {
        return const SizedBox();
      },
      steps: [
        Step(
            isActive: currStep >= 0,
            title: const Text("Fill Data"),
            content: RegisterData(nextPage: nextPage)),
        Step(
            isActive: currStep >= 1,
            title: const Text("Upload IC"),
            content: UploadIdCard(nextPage: nextPage)),
        Step(
            isActive: currStep >= 2,
            title: const Text("Confirm IC"),
            content: ConfirmIdCard(nextPage: nextPage)),
      ],
    ));
  }
}
