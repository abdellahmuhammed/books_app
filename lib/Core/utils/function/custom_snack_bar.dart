import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, String text) {
  // Hide any current SnackBar to avoid stacking
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          // Add an icon to the SnackBar
          const Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          // Show the message text
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueAccent,
      behavior: SnackBarBehavior.floating,
      // Floating Snack bar for better appearance
      elevation: 6.0,
      // Add some shadow
      duration: const Duration(seconds: 5),
      // Duration for showing the SnackBar
      shape: RoundedRectangleBorder(
        // Rounded corners for the SnackBar
        borderRadius: BorderRadius.circular(12.0),
      ),
      action: SnackBarAction(
        label: 'UNDO',
        textColor: Colors.yellow,
        onPressed: () {
          // Undo action or any other callback can be added here
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Undo successful"),
              duration: Duration(seconds: 2),
            ),
          );
        },
      ),
    ),
  );
}
