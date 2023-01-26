import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.064,
          right: screenSize.width * 0.064,
          top: screenSize.width * 0.074,
          bottom: screenSize.width * 0.074),
      child: SizedBox(
        height: screenSize.width * 0.122,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: screenSize.width * 0.021,
                ),
                SizedBox(
                  height: screenSize.width * 0.074,
                  width: screenSize.width * 0.074,
                  child: Image.asset(
                    'images/Icons/menus.png',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.width * 0.01,
                      bottom: screenSize.width * 0.01),
                  child: Text(
                    'Location',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: screenSize.width * 0.01,
                  ),
                  child: Text(
                    'Cameron St., Boston',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.width * 0.122,
              width: screenSize.width * 0.122,
              child: const CircleAvatar(
                backgroundImage: AssetImage('images/avatar/felipe.png'),
                radius: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
