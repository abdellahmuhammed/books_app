import 'package:flutter/material.dart';

/// Displays a custom SnackBar with a given message [text].
/// The SnackBar includes an icon, custom styling, and an action button.
/// [context] - The current BuildContext for displaying the SnackBar.
void customSnackBar(BuildContext context, String text) {
  // Hide any current SnackBar to avoid stacking multiple SnackBars.
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  // Display the custom SnackBar with the provided message.
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          // Add an icon to the SnackBar for visual emphasis.
          const Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
          const SizedBox(width: 8), // Space between icon and text.
          // Display the message text with custom styling.
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueAccent, // Background color for the SnackBar.
      behavior: SnackBarBehavior.floating, // Floating SnackBar for a modern look.
      elevation: 6.0, // Adds a shadow effect to the SnackBar.
      duration: const Duration(seconds: 5), // How long the SnackBar will be visible.
      shape: RoundedRectangleBorder(
        // Rounded corners for the SnackBar.
        borderRadius: BorderRadius.circular(12.0),
      ),
      action: SnackBarAction(
        label: 'UNDO', // Label for the action button.
        textColor: Colors.yellow, // Color for the action button text.
        onPressed: () {
          // Action to perform when the button is pressed.
          // For example, showing a message indicating the undo was successful.
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Undo successful"),
              duration: Duration(seconds: 2), // Duration of the confirmation SnackBar.
            ),
          );
        },
      ),
    ),
  );
}
