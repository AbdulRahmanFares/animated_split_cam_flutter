import 'package:flutter/material.dart';

class BasicSplit extends StatefulWidget {
  const BasicSplit({super.key});

  @override
  State<BasicSplit> createState() => _BasicSplitState();
}

class _BasicSplitState extends State<BasicSplit> {

  bool isPressed = false;
  
  @override
  Widget build(BuildContext context) {

    // Device's screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            if (isPressed == true)
              // Circles get split when the button is pressed
              Center(
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
              )
            else
              // Circles will look like a Venn diagram when the button is not pressed
              Center(
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
              ),

            SizedBox(
              height: screenHeight * 0.1
            ),

            // Press Button
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.1),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                    print(isPressed); // For debugging
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan.withOpacity(0.5),
                  fixedSize: Size(screenWidth * 0.4, screenHeight * 0.05),
                  shape: const RoundedRectangleBorder()
                ),
                child: Text(
                  "PRESS",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.white,
                    letterSpacing: 2
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}

