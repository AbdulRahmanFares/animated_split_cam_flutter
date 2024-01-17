# Animated Split Cam Flutter

## Introduction

This Flutter project, "Animated Split Cam Flutter," is a mobile application that provides a creative split-camera functionality with different visual effects. The project is divided into several Dart files, each focusing on specific aspects of the application.

## Screenshots

### Basic Split

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/basic_split_1.png" width="400">

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/basic_split_2.png" width="400">

### Moderate Split

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/moderate_split_1.png" width="400">

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/moderate_split_2.png" width="400">

### Animated Split

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/animated_split_1.png" width="400">

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/animated_split_2.png" width="400">

### Advanced Split with Cam

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/advanced_split_with_cam_1.png" width="400">

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/advanced_split_with_cam_2.png" width="400">

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/advanced_split_with_cam_3.png" width="400">

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/advanced_split_with_cam_4.png" width="400">

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/advanced_split_with_cam_5.png" width="400">

<img src="https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/screenshots/advanced_split_with_cam_6.png" width="400">

## Getting Started

To run this project locally, follow the steps below:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/AbdulRahmanFares/animated_split_cam_flutter.git
   ```

2. Navigate to the project directory:

   ```bash
   cd animated_split_cam_flutter
   ```

3. Open the project in your preferred Flutter IDE.

4. Install dependencies by running:

   ```bash
   flutter pub get
   ```

5. Update the main.dart file to run other files:

   ```dart
   // main.dart
   import 'package:animated_split_cam_flutter/screens/basic_split.dart';
   import 'package:animated_split_cam_flutter/screens/moderate_split.dart';
   import 'package:animated_split_cam_flutter/screens/animated_split.dart';
   import 'package:animated_split_cam_flutter/screens/advanced_split_with_cam.dart';
   import 'package:flutter/material.dart';

   void main() => runApp(const MyApp());

   class MyApp extends StatelessWidget {
     const MyApp({super.key});

     @override
     Widget build(BuildContext context) {
       return const MaterialApp(
         debugShowCheckedModeBanner: false,
         home: BasicSplit(), // Change this to the desired starting screen
       );
     }
   }
   ```

   Update the `home` property in the `MaterialApp` widget to point to the desired starting screen (e.g., `BasicSplit`, `ModerateSplit`, `AnimatedSplit`, or `AdvancedSplitWithCam`).

6. Run the app on your emulator or connected device:

   ```bash
   flutter run
   ```

## Features

- **Basic Split:** Introduces a basic split functionality with circles.
- **Moderate Split:** Adds a moderate split with conditional rendering.
- **Animated Split:** Implements an animated split effect using the AnimatedContainer widget.
- **Advanced Split with Cam:** Combines split functionality with the ability to capture images from the camera.

## Dependencies

This project uses the [image_picker](https://pub.dev/packages/image_picker) package to facilitate image capture functionality. Make sure to check the [image_picker documentation](https://pub.dev/packages/image_picker) for any additional setup or configuration.

## Issues and Contributions

If you encounter any issues or have suggestions for improvement, feel free to [open an issue](https://github.com/AbdulRahmanFares/animated_split_cam_flutter/issues) or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/AbdulRahmanFares/animated_split_cam_flutter/blob/main/LICENSE) file for details.

## Support

If you find this project helpful or would like to contribute to its continued development, consider supporting me with a coffee! Your support is invaluable.

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/farazzrahman)
