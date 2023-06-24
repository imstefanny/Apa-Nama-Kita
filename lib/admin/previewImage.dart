import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PreviewImage extends StatefulWidget {
  final String pathImage;
  const PreviewImage({super.key, required this.pathImage});

  @override
  State<PreviewImage> createState() => _PreviewImageState();
}

class _PreviewImageState extends State<PreviewImage> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Image.asset(widget.pathImage),
    );
  }
}
