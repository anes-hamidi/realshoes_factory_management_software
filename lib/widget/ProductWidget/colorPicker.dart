// ignore_for_file: file_names


import 'package:flutter/material.dart';

class ColorPickerIconButton extends StatefulWidget {
  final List<Color> colors;
  final Function(Color color)? onColorSelected;

  const ColorPickerIconButton({
    Key? key,
    required this.colors,
    this.onColorSelected,
  }) : super(key: key);

  @override
  State<ColorPickerIconButton> createState() => _ColorPickerIconButtonState();
}

class _ColorPickerIconButtonState extends State<ColorPickerIconButton> {
  Color? selectedColor;

  void openColorPickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color'),
          content: SingleChildScrollView(
            child: Column(
              children: widget.colors.map((color) {
                return ListTile(
                  title: Text(color.toString()),
                  leading: CircleAvatar(
                    backgroundColor: color,
                  ),
                  onTap: () {
                    Navigator.pop(context, color);
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    ).then((color) {
      if (color != null) {
        setState(() {
          selectedColor = color;
        });
        widget.onColorSelected?.call(color);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color:selectedColor,
      ),
      child: IconButton(icon: Icon(Icons.invert_colors_outlined), onPressed: openColorPickerDialog, color: Colors.black,)
      

     /* icon: const Icon(Icons.palette),
      onPressed: openColorPickerDialog,
      color: selectedColor,*/
    );
  }
}
