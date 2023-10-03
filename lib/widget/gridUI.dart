import 'package:flutter/material.dart';

class ResponsiveImageGrid extends StatelessWidget {
  final List<String> imageUrls;

  const ResponsiveImageGrid({Key? key, required this.imageUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Determine the number of columns in the grid based on the device's screen width.
    int columns = 2;
    if (size.width > 600) {
      columns = 3;
    } else if (size.width > 900) {
      columns = 4;
    }

    // Create a grid layout for the images.
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        // Display an image for each item in the list.
        return Image.network(imageUrls[index]);
      },
    );
  }
}