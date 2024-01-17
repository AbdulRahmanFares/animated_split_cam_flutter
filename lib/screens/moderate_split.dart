import 'package:flutter/material.dart';

class ModerateSplit extends StatefulWidget {
  const ModerateSplit({super.key});

  @override
  State<ModerateSplit> createState() => _ModerateSplitState();
}

class _ModerateSplitState extends State<ModerateSplit> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    
    // Device's screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Circles get split when the button is pressed
    circlesSplit() {
      return Center(
        child: SizedBox(
          height: screenHeight * 0.115,
          width: screenWidth * 0.6,
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

    // Circles will look like a Venn diagram when the button is not pressed
    circlesNotSplit() {
      return Center(
        child: SizedBox(
          height: screenHeight * 0.115,
          width: screenWidth * 0.36,
          child: Stack(
            children: [
              CircleAvatar(
                radius: screenWidth * 0.12,
                backgroundColor: Colors.cyan.withOpacity(0.5)
              ),
              Positioned(
                left: screenWidth * 0.12, // Positioned after this size from the left
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
              isPressed = !isPressed;
              print(isPressed); // For debugging
            });
          },
          child: isPressed == true
            ? circlesSplit()
            : circlesNotSplit()
        )
      )
    );
  }
}

