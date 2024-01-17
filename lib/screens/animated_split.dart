import 'package:flutter/material.dart';

class AnimatedSplit extends StatefulWidget {
  const AnimatedSplit({super.key});

  @override
  State<AnimatedSplit> createState() => _AnimatedSplitState();
}

class _AnimatedSplitState extends State<AnimatedSplit> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    
    // Device's screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    animatedCircles() {
      return Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: screenHeight * 0.115,
          width: isPressed
            ? screenWidth * 0.7
            : screenWidth * 0.241,
          child: Stack(
            children: [
              CircleAvatar(
                radius: screenWidth * 0.12,
                backgroundColor: Colors.cyan.withOpacity(0.5)
              ),
              Positioned(
                right: screenWidth * 0.0, // Right end
                child: CircleAvatar(
                  radius: screenWidth * 0.12,
                  backgroundColor: Colors.cyan.withOpacity(0.5)
                )
              )
            ]
          )
        )
      );
    }

    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            setState(() {
              // Circles get split when the button is pressed
              // and Circles will look like a Venn diagram
              // when the button is not pressed
              isPressed = !isPressed;

              // For debugging
              print(isPressed);
            });
          },

          child: animatedCircles()
        )
      )
    );
  }
}

