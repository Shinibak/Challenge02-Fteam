import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool wasPressed = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * 0.117,
      width: screenSize.width * 0.117,
      decoration: BoxDecoration(
        color: wasPressed
            ? const Color.fromARGB(255, 255, 187, 182)
            : const Color.fromARGB(255, 160, 160, 160),
        borderRadius: BorderRadius.circular(13),
      ),
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              wasPressed = !wasPressed;
            },
          );
        },
        child: Icon(
           wasPressed ? Icons.favorite : Icons.favorite_border_outlined,
          color: wasPressed ? Colors.red : const Color.fromARGB(255, 121, 120, 120),
          size: screenSize.width * 0.064,
        ),
      ),
    );
  }
}
