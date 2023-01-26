import 'package:flutter/material.dart';

class FlameImageWidget extends StatelessWidget {
  final String photo;
  const FlameImageWidget({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * 0.192,
      width: screenSize.width * 0.192,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 255, 193, 214),
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          image: ExactAssetImage(photo),
        ),
      ),
    );
  }
}
