import 'package:flutter/material.dart';
import 'flame_image_widget.dart';

class ListViewWidget extends StatelessWidget {
  final List photosList;
  const ListViewWidget({super.key, required this.photosList});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.192,
      child: Stack(
        children: [
          ListView.builder(
            itemCount: photosList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(bottom: screenSize.width * 0.048),
                child: FlameImageWidget(photo: photosList[index]),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenSize.width * 0.16,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
