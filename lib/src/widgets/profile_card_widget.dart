import 'package:challenge02_fteam/src/models/pet_adopt_model.dart';
import 'package:flutter/material.dart';

class ProfileCardWidget extends StatefulWidget {
  final PetAdoptModel petsData;
  const ProfileCardWidget({super.key, required this.petsData});

  @override
  State<ProfileCardWidget> createState() => _ProfileCardWidgetState();
}

class _ProfileCardWidgetState extends State<ProfileCardWidget> {
  bool wasPressed = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * 0.328,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      margin: EdgeInsets.only(
        right: screenSize.width * 0.064,
        bottom: screenSize.width * 0.064,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: screenSize.width * 0.021,
          right: screenSize.width * 0.048,
          top: screenSize.width * 0.021,
          bottom: screenSize.width * 0.032,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: screenSize.width * 0.277,
                    width: screenSize.width * 0.277,
                    decoration: BoxDecoration(
                      color: widget.petsData.cor,
                      borderRadius: BorderRadius.circular(19),
                      image: DecorationImage(
                        image: ExactAssetImage(widget.petsData.photos[0]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.005,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: screenSize.width * 0.021),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: screenSize.width * 0.021,
                                    bottom: screenSize.width * 0.026,
                                  ),
                                  child: Text(
                                    widget.petsData.name,
                                    style:
                                        Theme.of(context).textTheme.headline1,
                                  ),
                                ),
                                Text(
                                  widget.petsData.race,
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: screenSize.width * 0.016,
                                    bottom: screenSize.width * 0.042,
                                  ),
                                  child: Text(
                                    '${widget.petsData.sex}, ${widget.petsData.age}',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            size: screenSize.width * 0.042,
                            Icons.location_on,
                            color: Colors.amber[900],
                          ),
                          Text(
                            widget.petsData.location,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenSize.width * 0.021),
              child: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      wasPressed = !wasPressed;
                    },
                  );
                },
                child: Icon(
                  size: screenSize.width * 0.058,
                  color: wasPressed ? Colors.red : Colors.black,
                  wasPressed? Icons.favorite : Icons.favorite_border_outlined,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
