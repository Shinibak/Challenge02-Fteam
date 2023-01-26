import 'package:challenge02_fteam/src/models/button_modal.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final ButtonModal buttonsList;
  const ButtonWidget({
    super.key,
    required this.buttonsList,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        right: screenSize.width * 0.048,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: screenSize.width * 0.032,
              right: screenSize.width * 0.032,
            ),
            child: SizedBox(
              height: screenSize.width * 0.064,
              width: screenSize.width * 0.064,
              child: Image.asset(buttonsList.icon),
            ),
          ),
          Text(
            buttonsList.text,
            style: Theme.of(context).textTheme.headline2,
          ),
          if (buttonsList.text != '')
            SizedBox(
              width: screenSize.width * 0.032,
            ),
        ],
      ),
    );
  }
}
