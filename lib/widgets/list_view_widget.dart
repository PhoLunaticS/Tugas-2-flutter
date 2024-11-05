import 'package:flutter/material.dart';
import '../theme/custom_color.dart';

class WidgetListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      physics: const AlwaysScrollableScrollPhysics(), // Enable scrolling for the list
      shrinkWrap: true, // Adjust list view size based on content
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16.0), // Space between items
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: CustomColor.secondaryColor,
            borderRadius: BorderRadius.circular(12.0), // Rounded corners
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.smartphone, color: Colors.white, size: 64), // Smartphone icon
              const SizedBox(width: 16.0), // Space between icon and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brand ${index + 1}', // Dynamic brand name
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Model ${index + 1}', // Dynamic model name
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
