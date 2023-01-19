import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          child: SizedBox(
            height: screenSize.height * 0.08,
            width: screenSize.width * 0.12,
            child: Image.asset(
              'images/Icons/menus.png',
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Location'),
            Text(
              'Cameron St., Boston',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: screenSize.height * 0.08,
          width: screenSize.width * 0.12,
          child: const CircleAvatar(
            backgroundImage: AssetImage('images/avatar/felipe.png'),
            radius: 50.0,
          ),
        ),
      ],
    );
  }
}
