import 'package:challenge02_fteam/src/models/button_modal.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final ButtonModal buttonsList;
  const CustomButtonWidget({
    super.key,
    required this.buttonsList,
  });

  @override
  Widget build(BuildContext context) {
   final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.05,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenSize.height * 0.02,
            width: screenSize.width * 0.08,
            child: Image.asset(buttonsList.icon),
          ),
          Text(buttonsList.text),
        ],
      ),
    );
  }
}
