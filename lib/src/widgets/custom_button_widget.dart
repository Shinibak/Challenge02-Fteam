import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final textButton;
  final icon;
  const CustomButton({
    super.key,
    this.textButton,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10.0),
      height: screenSize.height * 0.05,
      width: textButton.toString().isEmpty
          ? screenSize.width * 0.10
          : screenSize.width * 0.20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenSize.height * 0.02,
            width: screenSize.width * 0.08,
            child: Image.asset(
              'images/Icons/$icon.png',
            ),
          ),
          Text(textButton),
        ],
      ),
    );
  }
}
