import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageDecoder extends StatelessWidget {
  final String base64Image;

  const ImageDecoder({Key? key, required this.base64Image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Uint8List bytes = base64Decode(base64Image);
    return Image.memory(bytes);
  }
}