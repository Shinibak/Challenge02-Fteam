import 'package:flutter/material.dart';

class CustomContainerImageWidget extends StatelessWidget {
  final String photos;
  const CustomContainerImageWidget({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenSize.height * 0.08,
        width: screenSize.width * 0.20,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 255, 193, 214),
            width: 2.5,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: ExactAssetImage(photos),
          ),
        ),
      ),
    );
  }
}
