import 'package:ac_88/profile/imgprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ButtonImagePicker extends StatelessWidget {
  final String title;
  final bool isGallery;
  const ButtonImagePicker(
      {Key? key, required this.isGallery, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ImagePickerProvider>(context);
    return ElevatedButton(
      onPressed: () async {
        await prov.pickImage(isGallery);
        Navigator.pop(context);
      },
      child: Text(
        title,
        style:
            GoogleFonts.lexendDeca(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}
