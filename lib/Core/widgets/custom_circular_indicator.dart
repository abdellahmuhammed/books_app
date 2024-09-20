import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatefulWidget {
  final double size; // Size of the CircularProgressIndicator
  final Color color; // Color of the CircularProgressIndicator

  const CustomCircularIndicator({
    super.key,
    this.size = 60.0, // Default size set to 60.0
    this.color = Colors.blue, // Default color set to blue
  });

  @override
  _CustomCircularIndicatorState createState() =>
      _CustomCircularIndicatorState();
}

class _CustomCircularIndicatorState extends State<CustomCircularIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Controller for handling the animation
  late Animation<double>
      _animation; // Animation object for controlling the value

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      // Duration of the animation (2 seconds)
      vsync: this, // Provides a Ticker for animations
    );

    // Initialize CurvedAnimation for a smoother transition in the animation
    _animation = CurvedAnimation(
      parent: _controller, // Attach the controller to the animation
      curve:
          Curves.easeInOut, // Define the animation curve (ease-in and ease-out)
    )..addListener(() {
        setState(
            () {}); // Rebuild the widget whenever the animation value changes
      });

    // Start the animation loop, but without reversing (one direction only)
    _controller.repeat(
        reverse: false); // Repeat the animation without reversing
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is removed to free resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.size, // Width of the CircularProgressIndicator
        height: widget.size, // Height of the CircularProgressIndicator
        child: Stack(
          fit: StackFit.expand, // Fill the entire space
          children: [
            Center(
              child: CircularProgressIndicator(
                value: _animation.value,
                // Link animation value to the progress
                strokeWidth: 6.0,
                // Thickness of the progress indicator
                backgroundColor: Colors.grey.shade200,
                // Background color for the circular track
                valueColor: AlwaysStoppedAnimation<Color>(
                    widget.color), // Color for the progress value
              ),
            ),
            Center(
              child: Text(
                '${(_animation.value * 100).toInt()}%',
                // Display the current progress percentage
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget
                      .color, // Text color matching the progress indicator color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
