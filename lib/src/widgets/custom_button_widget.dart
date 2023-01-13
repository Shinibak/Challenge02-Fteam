import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final text;
  final icon;
  const CustomButton({
    super.key,
    this.text,
    this.icon,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10.0),
      height: screenSize.height * 0.05,
      width: widget.text.toString().isEmpty
          ? screenSize.width * 0.10
          : screenSize.width * 0.20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenSize.height * 0.02,
            width: screenSize.width * 0.08,
            child: Image.asset(widget.icon),
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}
