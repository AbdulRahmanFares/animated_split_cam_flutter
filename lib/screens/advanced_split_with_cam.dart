import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AdvancedSplitWithCam extends StatefulWidget {
  const AdvancedSplitWithCam({super.key});

  @override
  State<AdvancedSplitWithCam> createState() => _AdvancedSplitWithCamState();
}

class _AdvancedSplitWithCamState extends State<AdvancedSplitWithCam> {

  bool isPressed = false;
  File? capturedImage1;
  File? capturedImage2;

  @override
  Widget build(BuildContext context) {
    
    // Device's screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Camera
    Future<void> openCamera(int avatarIndex) async {
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

      if (pickedFile != null) {
        setState(() {
          if (avatarIndex == 1) {
            capturedImage1 = File(pickedFile.path);
          } else if (avatarIndex == 2) {
            capturedImage2 = File(pickedFile.path);
          }
        });
      }
    }

    // Animated Circles
    animatedCircles() {
      return Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: screenHeight * 0.096,
          width: isPressed
            ? screenWidth * 0.7
            : screenWidth * 0.2025,
          child: Stack(
            children: [
              
              // Camera for proof capture
              Positioned(
                right: screenWidth * 0.0, // Right end
                child: GestureDetector(
                  onTap: () {
                    if (!isPressed) {
                      setState(() {
                        isPressed = true; // Circles get split when the button is pressed
                      });
                    } else {                      
                      openCamera(2); // Open Camera when the circles are split
                    }
                  },
                  child: CircleAvatar(
                    radius: screenWidth * 0.1,
                    backgroundColor: Colors.white,
                    child: capturedImage2 != null
                      ? ClipOval(
                          child: Image.file(
                            capturedImage2!,
                            fit: BoxFit.cover,
                            width: screenWidth * 0.238,
                            height: screenWidth * 0.238
                          )
                        )
                      : Icon(
                          Icons.file_upload_outlined,
                          size: screenWidth * 0.07,
                          color: Colors.black54
                        )
                  )
                )
              ),

              // Camera for face capture
              Positioned(
                left: screenWidth * 0.0, // Left end
                child: GestureDetector(
                  onTap: () {
                    if (!isPressed) {
                      setState(() {
                        isPressed = true; // Circles get split when the button is pressed
                      });
                    } else {
                      openCamera(1); // Open Camera when the circles are split
                    }
                  },
                  child: CircleAvatar(
                    radius: screenWidth * 0.1,
                    backgroundColor: Colors.white,
                    child: capturedImage1 != null
                      ? ClipOval(
                          child: Image.file(
                            capturedImage1!,
                            fit: BoxFit.cover,
                            width: screenWidth * 0.238,
                            height: screenWidth * 0.238
                          )
                        )
                      : Icon(
                          CupertinoIcons.person_solid,
                          size: screenWidth * 0.07,
                          color: Colors.black54
                        )
                  )
                )
              )
            ]
          )
        )
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: GestureDetector(
          onTap: () {},
          child: animatedCircles()
        )
      )
    );
  }
}

