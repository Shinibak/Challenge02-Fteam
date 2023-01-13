import 'package:flutter/material.dart';

class CustomContainerImage extends StatefulWidget {
  final String photos;
  const CustomContainerImage({super.key, required this.photos});

  @override
  State<CustomContainerImage> createState() => _CustomContainerImageState();
}

class _CustomContainerImageState extends State<CustomContainerImage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 255, 193, 214),
            width: 2.5,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: ExactAssetImage(widget.photos),
          ),
        ),
        height: screenSize.height * 0.08,
        width: screenSize.width * 0.20,
      ),
    );
  }
}
