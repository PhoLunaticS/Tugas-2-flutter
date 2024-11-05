import 'package:flutter/material.dart';
import '../theme/custom_color.dart';

class WidgetGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GridView.builder(
        scrollDirection: Axis.horizontal, // Set scrolling direction to horizontal
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Set to 1 to make it a single horizontal row
          childAspectRatio: 1.6, // Adjust aspect ratio to shape the grid item
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: 9,
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling for the grid view
        shrinkWrap: true, // Set gridview size to match content
        itemBuilder: (context, index) {
          return Container(
            width: 50, // Set the container width as needed
            decoration: BoxDecoration(
              color: CustomColor.secondaryColor,
              borderRadius: BorderRadius.circular(12.0), // Add border radius
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.smartphone, color: Colors.white, size: 128), // Changed to smartphone icon
                const SizedBox(height: 8.0),
                Text(
                  'Brand ${index + 1}', // Updated label for clarity
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Model ${index + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
