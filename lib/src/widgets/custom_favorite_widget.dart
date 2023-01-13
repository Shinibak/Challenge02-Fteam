import 'package:flutter/material.dart';

class CustomFavorite extends StatefulWidget {
  const CustomFavorite({super.key});

  @override
  State<CustomFavorite> createState() => _CustomFavoriteState();
}

class _CustomFavoriteState extends State<CustomFavorite> {
  bool ontap = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: ontap
            ? const Color.fromARGB(255, 255, 187, 182)
            : const Color.fromARGB(255, 160, 160, 160),
        borderRadius: BorderRadius.circular(10),
      ),
      height: screenSize.height * 0.05,
      width: screenSize.width * 0.10,
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              ontap = !ontap;
            },
          );
        },
        child: Icon(
          Icons.favorite,
          color: ontap ? Colors.red : const Color.fromARGB(255, 121, 120, 120),
          size: screenSize.height * 0.03,
        ),
      ),
    );
  }
}
